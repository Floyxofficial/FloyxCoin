// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "./Ownable.sol";
import "./IERC20.sol";
import "./SafeMath.sol";

contract Dividend is Ownable {
    address public tokenomicsAddress;
    uint256 public contractBalance;
    uint256 public userBalance;
    uint256 public userPercentage;
    uint256 public rewardAmountDistributed;

    IERC20 internal floyx;
    using SafeMath for uint256;

    constructor(address _tokenAddress,address _tokenomicsAddress) {
        require(
            _tokenAddress != address(0),
            "Token Address could not be empty"
        );

        require(
            _tokenomicsAddress != address(0),
            "Token Address could not be empty"
        );

        tokenomicsAddress = _tokenomicsAddress;
        floyx = IERC20(_tokenAddress);
    }

    // Supply in used
    function CiculatingSupply() public view returns(uint256){
        return floyx.totalSupply().sub(floyx.balanceOf(tokenomicsAddress));
    }

    // Claim your Rewards
    function ClaimDivident() public  returns(uint256) {
        contractBalance = floyx.balanceOf(address(this)); 
        userBalance = floyx.balanceOf(msg.sender); 
        userPercentage = getPercentageReward(userBalance,CiculatingSupply());
        rewardAmountDistributed = _percentage(contractBalance,userPercentage); 
        if (rewardAmountDistributed > 0) {
             floyx.transfer(msg.sender,rewardAmountDistributed);
             return rewardAmountDistributed;
        }
        return rewardAmountDistributed;
    }
    
    // Percantage of Amount
    function _percentage(uint256 totalAmount_,uint256 percentage_) public pure returns(uint256) {
        return (totalAmount_.mul(percentage_).div(100));
    }

    // user rewards percentage
    function getPercentageReward(uint256 userAmount, uint256 totalAmount) public pure returns(uint256) {
        userAmount = userAmount.mul(1e8);
        uint256 result = userAmount.div(totalAmount).mul(100);
        return result.div(1e8);
    }

}