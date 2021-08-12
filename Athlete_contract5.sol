//Define soldity version
pragma solidity 0.6.6;

contract Athlete_contract5{
    
    //All athlete information
    uint256 public athleteCount = 0; //Used to access different levels of the athlete database 
    mapping(uint256=>athletedatabase) public Athlete; // Database where all athletes would be stored
    struct athletedatabase{ //Defines required athlete data, this would then be passed into the databse using the current athlete count
        string Player_name;
        string Player_birthday;
        string Player_nationality;
        string Player_address;
       
    }
    
    //struct allows all data to be stored in a single variable, making it easier for future access
    struct Player_details{ //Same as previous struct but this one is used to talk to the UI
        string Player_name;
        string Player_birthday;
        string Player_nationality;
        string Player_address;
    } 
    Player_details public PlayerDetails;
    
    
    function setAthleteData(string memory _name, string memory _birthday, string memory _address, string memory _nationality) public{
        //Puts all the athlete details into the UI struct
        PlayerDetails.Player_name = _name;
        PlayerDetails.Player_birthday = _birthday;
        PlayerDetails.Player_nationality = _address;
        PlayerDetails.Player_address = _nationality;
        
        //increment amount of athletes in database and add athlete info to corresponding number in said databse
        athleteCount++;
        Athlete[athleteCount] = athletedatabase(_name, _birthday, _address, _nationality);
        
    }
    
    //All information for the franchise
    struct Franchise_details{
        string Franchise_name;
        string Franchise_address;
        string Club_representative;
    }
    Franchise_details public FranchiseDetails;
    
    //Contract start and end
    struct term{
        string Start;
        string End;
    }
    term public Term;
    
    
    mapping(uint256=>athleteTerm) public AthleteTerm; //This adds the term for the corresponding athlete into a seperate database;
    struct athleteTerm{
        string termStart;
        string termEnd;
    }
    
    
    function setClubData(string memory _clubName, string memory _clubAddress, string memory _clubRepresentative, string memory _termStart, string memory _termEnd) public{
        //set all franchise details, used for UI
        FranchiseDetails.Franchise_name = _clubName;
        FranchiseDetails.Franchise_address = _clubAddress;
        FranchiseDetails.Club_representative = _clubRepresentative;
        
        //Set the term for current athlete
        Term.Start = _termStart;
        Term.End = _termEnd;
        
        //Add athlete term to term database
        AthleteTerm[athleteCount] = athleteTerm(_termStart,_termEnd);
        
    }
    
    function renewContract(uint256 _athleteCount, string memory _termStart, string memory _termEnd) public{
        //this function allows changing the term of a specific athlete
        uint256 temp = athleteCount;
        athleteCount = _athleteCount;
        AthleteTerm[athleteCount] = athleteTerm(_termStart, _termEnd);
        athleteCount = temp;
    }
    
    function setAthleteCount(uint256 _athleteCount) public{
        // Reset the current athlete number and allow replacement of specific athlete
        athleteCount = _athleteCount;
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

