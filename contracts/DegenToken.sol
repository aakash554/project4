// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DegenToken is ERC20, Ownable {

    mapping (uint => uint ) public product;

    constructor() ERC20("Degen", "DGN") {
        product[1] = 50;
        product[2] = 50;
        product[3] = 10;
        product[4] = 40;
        product[5] = 20;
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
    
    function transferAmount(address to, uint256 amount) external {
        require(balanceOf(msg.sender)>=amount,"Insufficiant Balance, Amount is greater than balance");
        approve(msg.sender,amount);
        transferFrom(msg.sender,to,amount);
    }

    function burn(uint amount) external {
        require(balanceOf(msg.sender)>=amount,"Insufficiant Balance, Amount is greater than balance");
        approve(msg.sender,amount);
        _burn(msg.sender,amount);
    }

    function ShopMenu() public pure returns(string memory){
        string memory products = "Degen shop Products: 1. DGN T-Shirt(50 DGN) \n1 2. DGN Pants(50 DGN) \n2 3. DGN NFT (100 DGN) \n3 4. DGN Guns (40 DGN) \n4 5. DGN BackPack (20 DGN)";
        return products;
    }

    function RedeemProducts(uint item) external{
        if(item > 0 && item <=5){
            require(balanceOf(msg.sender)>= product[item],"Insufficiant Balance");

            transfer(owner(),product[item]);
        }

         else{
            revert("invalid item number");
        }
    }

    function checkbalance() external view returns(uint){
        return this.balanceOf(msg.sender);
        
    }
}
