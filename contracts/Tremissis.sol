pragma solidity ^0.4.11;

import "./StandardToken.sol";
import "./Ownable.sol";


/**
 *  SkinCoin token contract. Implements
 */
contract Tremissis is StandardToken, Ownable {
  string public constant name = "Tremissis";
  string public constant symbol = "TMS";
  uint public constant decimals = 8;


  // Constructor
  function Tremissis() {
      totalSupply = 111000000;
      balances[msg.sender] = totalSupply; // Send all tokens to owner
  }

  /**
   *  Burn away the specified amount of SkinCoin tokens
   */
  function burn(uint _value) onlyOwner returns (bool) {
    balances[msg.sender] = balances[msg.sender].sub(_value);
    totalSupply = totalSupply.sub(_value);
    Transfer(msg.sender, 0x0, _value);
    return true;
  }

}
