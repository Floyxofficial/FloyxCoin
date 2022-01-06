// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// arguments
// "0xf8e81D47203A594245E36C48e151709F0C19fBe8",["0x5146a08baf902532d0ee2f909971144f12ca32651cd70cbee1117cddfb3b3b33", "0x9c1ca198f61ac1647c38f20b6678649f8e87b7e06309094d812edd1e9119d309","0x33ed200cce320c90b0f5226969f1f198e39ade4221f23425218e256d5152f765", "0x39a8b3e6e97619937505a2ae24f70fc909c329e7595f016056def5c61ec407f4","0x5351739d55170cfb22a4ca0ed7c81953f896619e021ad6df97d197953d00ffd2", "0xdd7f4dc9b35ac72d649723b085bbc7dd3f5d3da1af9751c1605dc4aa94a94866","0xa08aacfe27eee176d3a98646161bdd8127a631f5d126a7366caa91d0f6ac9fde", "0x3a2f235c9daaf33349d300aadff2f15078a89df81bcfdd45ba11c8f816bddc6f","0x175d7b85ff1bc91c4b0c406862c9875f787d29798bfc84e43d7eda7bb7543a31"],["0x4d23c8E0e601C5e37b062832427b2D62777fAEF9","0x4d23c8E0e601C5e37b062832427b2D62777fAEF9","0x4d23c8E0e601C5e37b062832427b2D62777fAEF9","0x4d23c8E0e601C5e37b062832427b2D62777fAEF9","0x4d23c8E0e601C5e37b062832427b2D62777fAEF9","0x4d23c8E0e601C5e37b062832427b2D62777fAEF9","0x4d23c8E0e601C5e37b062832427b2D62777fAEF9","0x4d23c8E0e601C5e37b062832427b2D62777fAEF9","0x4d23c8E0e601C5e37b062832427b2D62777fAEF9"],[10,"5",8,"8",10,"20",30,"3",6],[10,"10",5,"1",5,"5",1,"2",5]
// abi encoded arguments
// 000000000000000000000000f8e81d47203a594245e36c48e151709f0c19fbe800000000000000000000000000000000000000000000000000000000000000a000000000000000000000000000000000000000000000000000000000000001e00000000000000000000000000000000000000000000000000000000000000320000000000000000000000000000000000000000000000000000000000000046000000000000000000000000000000000000000000000000000000000000000095146a08baf902532d0ee2f909971144f12ca32651cd70cbee1117cddfb3b3b339c1ca198f61ac1647c38f20b6678649f8e87b7e06309094d812edd1e9119d30933ed200cce320c90b0f5226969f1f198e39ade4221f23425218e256d5152f76539a8b3e6e97619937505a2ae24f70fc909c329e7595f016056def5c61ec407f45351739d55170cfb22a4ca0ed7c81953f896619e021ad6df97d197953d00ffd2dd7f4dc9b35ac72d649723b085bbc7dd3f5d3da1af9751c1605dc4aa94a94866a08aacfe27eee176d3a98646161bdd8127a631f5d126a7366caa91d0f6ac9fde3a2f235c9daaf33349d300aadff2f15078a89df81bcfdd45ba11c8f816bddc6f175d7b85ff1bc91c4b0c406862c9875f787d29798bfc84e43d7eda7bb7543a3100000000000000000000000000000000000000000000000000000000000000090000000000000000000000004d23c8e0e601c5e37b062832427b2d62777faef90000000000000000000000004d23c8e0e601c5e37b062832427b2d62777faef90000000000000000000000004d23c8e0e601c5e37b062832427b2d62777faef90000000000000000000000004d23c8e0e601c5e37b062832427b2d62777faef90000000000000000000000004d23c8e0e601c5e37b062832427b2d62777faef90000000000000000000000004d23c8e0e601c5e37b062832427b2d62777faef90000000000000000000000004d23c8e0e601c5e37b062832427b2d62777faef90000000000000000000000004d23c8e0e601c5e37b062832427b2d62777faef90000000000000000000000004d23c8e0e601c5e37b062832427b2d62777faef90000000000000000000000000000000000000000000000000000000000000009000000000000000000000000000000000000000000000000000000000000000a000000000000000000000000000000000000000000000000000000000000000500000000000000000000000000000000000000000000000000000000000000080000000000000000000000000000000000000000000000000000000000000008000000000000000000000000000000000000000000000000000000000000000a0000000000000000000000000000000000000000000000000000000000000014000000000000000000000000000000000000000000000000000000000000001e000000000000000000000000000000000000000000000000000000000000000300000000000000000000000000000000000000000000000000000000000000060000000000000000000000000000000000000000000000000000000000000009000000000000000000000000000000000000000000000000000000000000000a000000000000000000000000000000000000000000000000000000000000000a0000000000000000000000000000000000000000000000000000000000000005000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000050000000000000000000000000000000000000000000000000000000000000005000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000020000000000000000000000000000000000000000000000000000000000000005

import "./SafeMath.sol";
import "./IERC20.sol";
import "./Ownable.sol";


contract FloyxTokenomics is Ownable{

    using SafeMath for uint256;

    bytes32 public constant TEAM_ROLE = keccak256('TEAM_ROLE');
    bytes32 public constant ADVISOR_ROLE =keccak256('ADVISOR_ROLE');
    bytes32 public constant MARKETING_ROLE =keccak256('MARKETING_ROLE');
    bytes32 public constant LIQUIDITY_ROLE =keccak256('LIQUIDITY_ROLE');
    bytes32 public constant DEVELOPMENT_ROLE =keccak256('DEVELOPMENT_ROLE');
    bytes32 public constant ECOSYSTEM_ROLE =keccak256('ECOSYSTEM_ROLE');
    bytes32 public constant TOKENSALE_ROLE =keccak256('TOKENSALE_ROLE');
    bytes32 public constant AIRDROP_ROLE =keccak256('AIRDROP_ROLE');
    bytes32 public constant GRANTS_ROLE =keccak256('GRANTS_ROLE');


    string private paymentErr = "Floyx Tokenomics : No due Payments";
    uint256 public constant unixtimeOneMonth = 60*60*3;//2592000; //60*60*24*30
    bool public lockClaim = false;
    uint256 public deployedTime;

    IERC20 internal floyx;

    mapping(bytes32 => address)public roles;
    mapping(address => uint256)public tokenAllowance;
    mapping(address => uint256) public paymentPerMonth;
    mapping(address => uint) public remainingInstallments;
    mapping(address => uint) public completedInstallments;

    event FundsReleased(address indexed recepient, uint256 amount);

    constructor( address floyxAddress, bytes32[] memory roles_, address[] memory addresses_, uint256[] memory allowancePercentage_,
        uint256[] memory installmentPercentage_) {

        require(addresses_.length == roles_.length);

        deployedTime = block.timestamp;
        floyx = IERC20(floyxAddress);
        uint256 totalSupply = floyx.totalSupply();

        for (uint8 i=0; i< addresses_.length; i++){

            roles[roles_[i]] = addresses_[i];
            tokenAllowance[addresses_[i]] = _percentage(totalSupply, allowancePercentage_[i]) ; // total supply percentage
            paymentPerMonth[addresses_[i]] = _percentage(tokenAllowance[addresses_[i]], installmentPercentage_[i]); // installments of supply
            remainingInstallments[addresses_[i]] =  tokenAllowance[addresses_[i]].div(paymentPerMonth[addresses_[i]]);
        }
    }

    function lockClaims() public onlyOwner {
        lockClaim = true;
    }

    function unlockClaims() public onlyOwner {
        lockClaim = false;
    }

    function distributeInstallment(address recepient, uint256 monthsToPay) private{
        uint256 amountDue=0;
        monthsToPay = monthsToPay.sub(completedInstallments[recepient]);

        for(uint256 len=monthsToPay; len>0; len--){
            if(remainingInstallments[recepient] == 0){
                break;
            }

            amountDue = amountDue.add(paymentPerMonth[recepient]);
            remainingInstallments[recepient] = remainingInstallments[recepient].sub(1);
            completedInstallments[recepient] = completedInstallments[recepient].add(1);
        }

        if (amountDue > 0) {
            _floxyTransfer(amountDue,recepient);
        }
    }

    function teamClaim()public{
        _verifyClaim(TEAM_ROLE, msg.sender);
        uint256 monthsToPay = _elapsedMonths(0);
        require (monthsToPay > 0, paymentErr);
        distributeInstallment(msg.sender,monthsToPay);
    }

    function advisorClaim()public{
        _verifyClaim(ADVISOR_ROLE, msg.sender);
        uint256 monthsToPay = _elapsedMonths(0);
        monthsToPay = monthsToPay.div(3);
        require (monthsToPay > 0,  paymentErr);

        distributeInstallment(msg.sender,monthsToPay);
    }

    function marketingClaim()public{
        _verifyClaim(MARKETING_ROLE, msg.sender);
        uint256 monthsToPay = _elapsedMonths(0);
        require (monthsToPay > 0,  paymentErr);

        distributeInstallment(msg.sender,monthsToPay);
    }

    function liquidityClaim()public{
        _verifyClaim(LIQUIDITY_ROLE, msg.sender);

        distributeInstallment(msg.sender,remainingInstallments[msg.sender]);
    }

    function developmentClaim()public{
        _verifyClaim(DEVELOPMENT_ROLE, msg.sender);
        uint256 monthsToPay = _elapsedMonths(0);
        require (monthsToPay > 0,  paymentErr);

        distributeInstallment(msg.sender,monthsToPay);
    }

    function ecosystemClaim()public{
        _verifyClaim(ECOSYSTEM_ROLE, msg.sender);
        uint256 monthsToPay = _elapsedMonths(0);
        require (monthsToPay > 0,  paymentErr);

        distributeInstallment(msg.sender,monthsToPay);
    }


    function tokenSaleClaim()public{
        _verifyClaim(TOKENSALE_ROLE, msg.sender);

        distributeInstallment(msg.sender,remainingInstallments[msg.sender]);
    }

    function airDropClaim()public{
        _verifyClaim(AIRDROP_ROLE, msg.sender);
        uint256 monthsToPay = _elapsedMonths(0);
        require (monthsToPay > 0,  paymentErr);

        distributeInstallment(msg.sender,monthsToPay);
    }

    function grantsClaim()public{
        _verifyClaim(GRANTS_ROLE, msg.sender);
        uint256 monthsToPay = _elapsedMonths(3); // 3 months lockout period
        require (monthsToPay > 0,  paymentErr);

        distributeInstallment(msg.sender,monthsToPay);
    }

    function _verifyClaim(bytes32 role_,address user_)internal view {
        require(lockClaim == false,"Floyx Tokenomics : Claim is locked now. Please try again later");
        require(roles[role_] == user_, "Floyx Tokenomics : Invalid caller");
        require(tokenAllowance[user_] > 0, "Floyx Tokenomics : All token payments already completed");
        require(remainingInstallments[user_] > 0, "Floyx Tokenomics : Installments completed");
    }

    function updateAddress(bytes32[]memory roles_, address[] memory addresses_)public onlyOwner{
        require(addresses_.length == roles_.length);
        
        for(uint8 i = 0; i< roles_.length; i++){
            require(roles[roles_[i]] != address(0), "Floyx Tokenomics : Role does not exists");
            roles[roles_[i]] = addresses_[i];
        }
    }

    function _floxyTransfer(uint256 amountDue,address recepient) internal{
            tokenAllowance[recepient] = tokenAllowance[recepient].sub(amountDue);
            floyx.transfer(recepient,amountDue);
            emit FundsReleased(recepient, amountDue);
    }
  
    function _percentage(uint256 totalAmount_,uint256 percentage_) internal pure returns(uint256) {
        return (totalAmount_.mul(percentage_).div(100));
    }

    function _elapsedMonths(uint256 _lockPeriod) internal view returns(uint256) {
        uint256 presentTime = block.timestamp;
        uint256 elapsedTime = presentTime.sub(deployedTime);
     
        uint256 unixlocktime = _lockPeriod.mul(unixtimeOneMonth);
        require(elapsedTime > unixlocktime,"Floyx Tokenomics : Lock period is active");
        elapsedTime = elapsedTime.sub(unixlocktime);
        require(elapsedTime > 0, "Floyx Tokenomics : Lock period is active");      
        uint256 elapsedMonth = elapsedTime.div(unixtimeOneMonth);
        return elapsedMonth;
    }
}