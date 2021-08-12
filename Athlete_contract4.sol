//define solidity version
pragma solidity 0.6.6;

contract Athlete_contract4{
    
    //struct allows all data to be stored in a single variable, making it easier for future access
    //All athlete information
    struct Player_details{
        string Player_name;
        string Player_birthday;
        string Player_nationality;
        string Player_address;
    } 
    Player_details public PlayerDetails;
    
    
    //function that interacts with the UI to insert player information into smart contract
    function setAthleteData(string memory _name, string memory _birthday, string memory _address, string memory _nationality) public{
        PlayerDetails.Player_name = _name;
        PlayerDetails.Player_birthday = _birthday;
        PlayerDetails.Player_nationality = _address;
        PlayerDetails.Player_address = _nationality;
        
    }
    
    //All information for the franchise
    struct Franchise_details{
        string Franchise_name;
        string Franchise_address;
        string Club_representative;
    }
    Franchise_details public FranchiseDetails;
    
    //Contract start and end dates
    struct term{
        string Start;
        string End;
    }
    term public Term;
    
    //function that interacts with the UI to insert club info into smart contract
    function setClubData(string memory _clubName, string memory _clubAddress, string memory _clubRepresentative, string memory _termStart, string memory _termEnd) public{
        FranchiseDetails.Franchise_name = _clubName;
        FranchiseDetails.Franchise_address = _clubAddress;
        FranchiseDetails.Club_representative = _clubRepresentative;
        
        Term.Start = _termStart;
        Term.End = _termEnd;
    }
    
   
    //All the following functions are used to send data to the mock contract UI
    function getName() view public returns(string memory){
        return PlayerDetails.Player_name;
    }
    function getBirthday() view public returns(string memory){
        return PlayerDetails.Player_birthday;
    }
    function getNationality() view public returns(string memory){
        return PlayerDetails.Player_nationality;
    }
    function getAddress() view public returns(string memory){
        return PlayerDetails.Player_address;
    }
    
    
    
    function getClubName() view public returns(string memory){
        return FranchiseDetails.Franchise_name;
    }
    function getClubAddress() view public returns(string memory){
        return FranchiseDetails.Franchise_address;
    }
    function getClubRepresentative() view public returns(string memory){
        return FranchiseDetails.Club_representative;
    }
    
    
    
    function getTermStart() view public returns(string memory){
        return Term.Start;
    }
    function getTermEnd() view public returns(string memory){
        return Term.End;
    }
    
    
   
}

