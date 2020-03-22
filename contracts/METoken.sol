pragma solidity >0.5.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20Detailed.sol";

contract METoken is ERC20, ERC20Detailed {
    string public constant _name = 'Mastering Ethereum Token';
    string public constant _symbol = 'MET';
    uint8 public constant _decimals = 2;
    uint constant _initial_supply = 2100000000;

    constructor () ERC20Detailed(_name, _symbol, _decimals) public {
        _mint(
            msg.sender,
            10000 * (10 ** uint256(decimals()))
        );
    }
}
