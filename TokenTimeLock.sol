pragma solidity ^ 0.8.13;

import "./Token.sol";

contract TokenTimeLock {
  Token public token;
  address public beneficiary;
  uint public releaseTime;

  constructor (Token _token, address _beneficiary, uint _releaseTime) public {
    require(_releaseTime > block.timestamp);

    token = _token;
    beneficiary = _beneficiary;
    releaseTime = _releaseTime;
  }

  function release() public {
    require(block.timestamp >= releaseTime);

    uint amount = token.balanceOf(address(this));

    require(amount > 0); // Amount can't be 0.

    token.transfer(beneficiary, amount);

  }
}
