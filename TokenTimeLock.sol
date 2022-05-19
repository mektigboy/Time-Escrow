pragma solidity ^ 0.8.13;

import "/Token.sol";

contract TokenTimeLock {
  Token public token;
  address public beneficiary;
  uint public releaseTime;

  constructor (Token _token, address _beneficiary, _releaseTime) public {
    token = _token;
    beneficiary = _beneficiary;
    releaseTime = _releaseTime;
  }
}
