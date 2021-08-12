//define solidity version
pragma solidity 0.6.6;

//Chainlink oracle repository
import "https://raw.githubusercontent.com/smartcontractkit/chainlink/develop/evm-contracts/src/v0.6/ChainlinkClient.sol";

//import chainlink smart contract into this smart contract
contract Athlete_contract3 is ChainlinkClient{
    
    //variables for player and club name 
    string public Name;
    string public Club;
   
   //struct allows all data to be stored in a single variable, making it easier for future access
   //struct for all player details
    struct Player_details{
        string Player_birthday;
        string Player_nationality;
        string Player_address;
    } 
    Player_details public PlayerDetails;
    
    
    //struct for all club details
    struct Franchise_details{
        string Franchise_name;
        string Franchise_address;
        string Club_representative;
    }
    Franchise_details public FranchiseDetails;
    
    //struct for term athlete serves through
    struct term{
        string Start;
        string End;
    }
    term public Term;
    
    //struct for other necessary data and payment variables
    struct retainer_contracts{
        uint256 Salary;
        uint256 Bonus;
        string Vehicle;
        string Housing;
    }
    retainer_contracts public RetainerContracts;
    
    //define chainlink oracle, the job in use, and the fee to use a chainlink oracle
    address private oracle;
    bytes32 private jobId;
    uint256 private fee;
    
    constructor() public{ //set the values for above variables
        setPublicChainlinkToken();
        oracle = 0x2f90A6D021db21e1B2A077c5a37B3C7E75D15b7e;
        jobId = "50fc4215f89443d185b061e5d7af9490";
        fee = 0.1 * 10 ** 18; // 0.1 LINK
        
    }
    
    function requestAthleteData() public returns (bytes32 requestId) 
    {
        Chainlink.Request memory request = buildChainlinkRequest(jobId, address(this), this.fulfill.selector);
        
        // Set the URL to perform the GET request on
        request.add("get", "https://1e68b62e-578e-4390-bf43-6b70a92a23b6.mock.pstmn.io/get");
        
        // Set the path to find the desired data in the API response, where the response format is:
        //use 0.Name since data is in an array
        request.add("path", "0.Name");
        
        // Sends the request
        return sendChainlinkRequestTo(oracle, request, fee);
        
       
        
    }
    
    function bytes32ToString(bytes32 _bytes32) public pure returns (string memory) { 
        //this function converts the returned data from the oracle into a readable string
        
        uint8 i = 0;
        while(i < 32 && _bytes32[i] != 0) {
            i++;
        }
        bytes memory bytesArray = new bytes(i);
        for (i = 0; i < 32 && _bytes32[i] != 0; i++) {
            bytesArray[i] = _bytes32[i];
        }
        return string(bytesArray);
    }
    
    function fulfill(bytes32 _requestId, bytes32 _name) public recordChainlinkFulfillment(_requestId)
    {
        //call function to convert to string and assign value to name class
        string memory stringName = bytes32ToString(_name);
        Name = stringName;
        
        
        
    }
    
    //this method proved ineffictive and so is only set up to fetch the first value of data
    
}
