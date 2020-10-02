pragma solidity ^0.5.7;
 
contract test {
    
    uint val = 7;
    
    function wotVal() public returns (uint) {
        val++;
        return val;
    }
}
