pragma solidity ^ 0.8.13;

import "./Token.sol";

contract TokenTimeLock {
  Token public token;
  address public beneficiary;
  uint public releaseTime;

  constructor (Token _token, address _beneficiary, _releaseTime) public {
    require(_releaseTime > block.timestamp);
    token = _token;
    beneficiary = _beneficiary;
    releaseTime = _releaseTime;
  }

  function release() public {
    uint amount = token.balanceOf(address(this));
  }
}
