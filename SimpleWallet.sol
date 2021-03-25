pragma solidity ^0.8.1;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol";


contract SimpleWallet is Ownable {
    function isOwner() internal view returns(bool) {
        return owner() == msg.sender;
    }
    
    
    function withdrawMoney(address payable _to, uint _amount) public onlyOwner {
        _to.transfer(_amount);
        
    }
    
    receive() external payable {
        
    }
}