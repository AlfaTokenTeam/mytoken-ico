pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract MYTOKEN is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function MYTOKEN(address _owner)  UpgradeableToken(_owner) {
    name = "MYTOKEN";
    symbol = "TKN";
    totalSupply = 1000000000000000000000000000;
    decimals = 18;

    balances[_owner] = totalSupply;
  }
}