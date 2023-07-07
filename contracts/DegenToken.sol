// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DegenToken is ERC20, Ownable {
    string public iGitems;
    constructor() ERC20("Degen", "DGN") {
        iGitems="1. Degen Eraser 2. Degen Sharpener 3. Degen Notebook";
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function transfer(address to, uint256 value) public virtual override returns (bool) {
        require(value <= balanceOf(msg.sender), "Insufficient balance");
        require(to != address(0), "Invalid recipient");

        _transfer(msg.sender, to, value);

        return true;
    }

    function transferFrom(address from, address to, uint256 value) public virtual override returns (bool) {
        require(value <= balanceOf(from), "Insufficient balance");
        require(value <= allowance(from, msg.sender), "Insufficient allowance");
        require(to != address(0), "Invalid recipient");

        _transfer(from, to, value);
        _approve(from, msg.sender, allowance(from, msg.sender) - value);

        return true;
    }

    function burn(uint256 value) external  returns (bool) {
        require(value <= balanceOf(msg.sender), "Insufficient balance");

        _burn(msg.sender, value);

        return true;
    }

    function redeem(uint256 redeem_amount)public{
        require(redeem_amount!=0, "Kindly enter a input greater than 0");
        if(redeem_amount>3){
            revert("Kindly enter a number less than or equal to 3");
        }
        _burn(msg.sender, redeem_amount*500);
    }
}
