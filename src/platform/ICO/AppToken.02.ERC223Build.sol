pragma solidity ^0.4.24;

import '../../common/Ownable.sol';
import './AppToken.02.ERC223.sol';

/**
 * @title AppToken build contract (for apps ICO)
 */
contract AppTokenERC223Build is Ownable {
  
  constructor () public {}

  /**
   * @dev CreateAppTokenContract - create new AppToken contract and return him address
   */   
  function CreateAppTokenContract(string _name, string _symbol, address _CrowdSale, address _PMFund, address _dev) external returns (address) {                      
    AppToken _contract = new AppToken(_name, _symbol, _CrowdSale, _PMFund, _dev);
    return address(_contract);
  }
}