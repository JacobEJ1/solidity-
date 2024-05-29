// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.18;

contract MyToken {
    // Public variables to store the details about the coin
    string public tokenName = "PESO";
    string public tokenAbbrv = "PSO";
    uint public totalSupply = 0;

    // Mapping of addresses to balances
    mapping(address => uint) public balances;

    // Mint function to increase the total supply and balance of an address
    function mint(address _address, uint _amount) public  {
        totalSupply += _amount;
        balances[_address] += _amount;
    }

    // Burn function to decrease the total supply and balance of an address
    function burn(address _address, uint _amount) public {
        if (balances[_address] >= _amount) {
            totalSupply -= _amount;
            balances[_address] -= _amount;
        }
    }
}
