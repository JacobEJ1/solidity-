# Project Token
## Overview 
This project is a simple "MyToken" progran that
demosntrate a smart contract for creating and
managing a basic token named MyToken(PSO). t
includes functionalities for minting new tokens
and burning existing tokens.

## Contract Details :  
```solidity
contract MyToken {
          // Contract variables and functions 
}
```
## Public Variables 
```solidity 
string public tokenName = "PESO";
string public tokenAbbrv = "PSO";
uint public totalSupply = 0;
```

These public variables define properties of token,
wherein tokenName represents the name of the
token which is typically a human-readable name
assigned to identify the token, and tokenAbbrv
represents the abbreviation or ticker symbol of the
token. While the Total Supply represents the
total supply of the token, indicating how many
tokens exist in circulation.

## Mapping Variables :
```solidity 
mapping(address => uint) public balances;
```

Mapping defines the balances that associates Ethereum addresses with their respective balances.

## Mint Function :
```solidity 
function mint (address _recipient, uint _ amount) public {
               totalSupply += _amount ;
               balances[_recipient] += _amount ;
           }
```

The mint function in a token contract is typically
used to create (or 'mint) new tokens and assign
them to a specified recipient.

## Burn Function :
```solidity 
function burn (address _recipient, uint _amount) public {
                if (balances[recipient] >= _amount) {
                totalSupply -= amount ; 
                balances[recipient] >= _amount ;
        }
}
```

This burn function used to remove (or "burn')
esisting tokens from circulation, effectively
reducing the total token supply.

## License :

This Project is licensed under MIT license - see the
LICENSE file for details.


