#########################################################################
#
# SwapMote
#
# Copyright (c) 2011 Daniel Berenguer <dberenguer@usapiens.com>
# 
# This file is part of the panStamp project.
# 
# panStamp  is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# panStamp is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of 
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with panLoader; if not, write to the Free Software
# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301 
# USA
#
# Author: Daniel Berenguer
# Creation date: 20-Aug-2011
#
#########################################################################
__author__="Daniel Berenguer"
__date__  ="$Aug 20, 2011 10:36:00 AM$"
#########################################################################

from swap.SwapPacket import SwapStatusPacket, SwapCommandPacket, SwapQueryPacket
from swap.SwapDefs import SwapRegId, SwapState
from swap.SwapValue import SwapValue
from SwapException import SwapException
from xmltools.XmlDevice import XmlDevice

import time


class SwapMote(object):
    """
    SWAP mote class
    """
    def cmdRegister(self, regId, value):
        """
        Send command to register and return expected response
        
        @param regId: Register ID
        @param value: New value
        
        @return Expected SWAP status packet sent from mote after reception of this command
        """
        # Expected response from mote
        infPacket = SwapStatusPacket(self.address, regId, value)
        # Command to be sent to the mote
        cmdPacket = SwapCommandPacket(self.address, regId, value, self.nonce)
        # Send command
        cmdPacket.send(self.server.modem)
        # Return expected response
        return infPacket;


    def qryRegister(self, regId):
        """
        Send query to register
        
        @param regId: Register ID
        """
        # Query packet to be sent
        qryPacket = SwapQueryPacket(self.address, regId)
        # Send query
        qryPacket.send(self.server.modem)


    def staRegister(self, regId):
        """
        Send SWAP status packet about the current value of the register passed as argument
        
        @param regId: Register ID
        @param value: New value
        """
        # Get register
        reg = self.getRegister(regId)
        # Status packet to be sent
        infPacket = SwapStatusPacket(self.address, regId, reg.value)
        # Send SWAP status packet
        infPacket.send(self.server.modem)


    def cmdRegisterWack(self, regId, value):
        """
        Send SWAP command to remote register and wait for confirmation
        
        @param regId: Register ID
        @param value: New value
        
        @return True if ACK is received from mote. Return False otherwise
        """
        return self.server.setMoteRegister(self, regId, value)


    def setAddress(self, address):
        """
        Set mote address
        
        @param address: New mote address
        
        @return True if this command is confirmed from the mote. Return False otherwise
        """
        val = SwapValue(address, length=1)
        return self.cmdRegisterWack(SwapRegId.ID_DEVICE_ADDR, val)


    def setNetworkId(self, netId):
        """
        Set mote's network id. Return true if ACK received from mote
        
        @param netId: New Network ID
        
        @return True if this command is confirmed from the mote. Return False otherwise
        """
        val = SwapValue(netId, length=2)
        return self.cmdRegisterWack(SwapRegId.ID_NETWORK_ID, val)


    def setFreqChannel(self, channel):
        """
        Set mote's frequency channel. Return true if ACK received from mote
        
        @param channel: New frequency channel
        
        @return True if this command is confirmed from the mote. Return False otherwise
        """
        val = SwapValue(channel, length=1)
        return self.cmdRegisterWack(SwapRegId.ID_FREQ_CHANNEL, val)


    def setSecurity(self, secu):
        """
        Set mote's security option. Return true if ACK received from mote
        
        @param secu: Security option
        
        @return True if this command is confirmed from the mote. Return False otherwise
        """
        val = SwapValue(secu, length=1)
        return self.cmdRegisterWack(SwapRegId.ID_SECU_OPTION, val)


    def setTxInterval(self, interval):
        """
        Set periodic Tx interval. Return true if ACK received from mote
        
        @param interval: New Tx interval
        
        @return True if this command is confirmed from the mote. Return False otherwise
        """
        val = SwapValue(interval, length=2)
        return self.cmdRegisterWack(SwapRegId.ID_TX_INTERVAL, val)
    
    
    def restart(self):
        """
        Ask mote to restart
        
        @return True if this command is confirmed from the mote. Return False otherwise
        """
        val = SwapValue(SwapState.RESTART, length=1)
        return self.cmdRegisterWack(SwapRegId.ID_SYSTEM_STATE, val)


    def leaveSync(self):
        """
        Ask mote to leave SYNC mode (RXON state)
        
        @return True if this command is confirmed from the mote. Return False otherwise
        """
        val = SwapValue(SwapState.RXOFF, length=1)
        return self.cmdRegisterWack(SwapRegId.ID_SYSTEM_STATE, val)

    
    def updateTimeStamp(self):
        """
        Update time stamp
        """
        self.timestamp = time.time()
    
    
    def getRegister(self, regId):
        """
        Get register given its ID
        
        @param regId: Register ID
        
        @return SwapRegister object
        """
        # Regular registers
        for reg in self.lstregregs:
            if reg.id == regId:
                return reg            
        # Configuration registers
        for reg in self.lstcfgregs:
            if reg.id == regId:
                return reg

        return None


    def getParameter(self, name):
        """
        Get parameter given its name
        
        @param name: name of the parameter belonging to this mote
        
        @return: SwapParam object
        """
        # Regular registers
        for reg in self.lstregregs:
            for param in reg.lstItems:
                if param.name == name:
                    return param
        # Configuration registers
        for reg in self.lstcfgregs:
            for param in reg.lstItems:
                if param.name == name:
                    return param
                
        return None
            
        
    def __init__(self, server=None, product_code=None, address=0xFF, security=0, nonce=0):
        """
        Class constructor
        
        @param server: SWAP server object
        @param product_code: Product Code
        @param address: Mote address
        """
        if server is None:
            raise SwapException("SwapMote constructor needs a valid SwapServer object")
        ## Swap server object
        self.server = server
        ## Product ID
        self.product_id = 0
        ## Manufacturer ID
        self.manufacturer_id = 0
        ## Definition settings
        self.config = None

        # Get manufacturer and product id from product code
        if product_code is not None:
            for i in range(4):
                self.manufacturer_id = self.manufacturer_id | (product_code[i] << 8 * (3-i))
                self.product_id = self.product_id | (product_code[i + 4] << 8 * (3-i))

        # Definition file
        ## Definition settings
        self.definition = XmlDevice(self)

        ## Device address
        self.address = address
        ## Security option
        self.security = security
        ## Current mote's security nonce
        self.nonce = nonce
        ## State of the mote
        self.state = SwapState.RXOFF
        ## List of regular registers provided by this mote
        self.lstregregs = None
        ## List of config registers provided by this mote
        self.lstcfgregs = None
        if self.definition is not None:
            # List of regular registers
            self.lstregregs = self.definition.getRegList()
            # List of config registers
            self.lstcfgregs = self.definition.getRegList(config=True)
        ## Time stamp of the last update received from mote
        self.timestamp = time.time()
        ## Powerdown mode
        self.pwrdownmode = self.definition.pwrdownmode
        ## Interval between periodic transmissions
        self.txinterval = self.definition.txinterval

