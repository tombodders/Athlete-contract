//define solidity version
pragma solidity 0.6.6;

contract Athlete_contract2{
    
    //mock contract following outline of previous Sharks contract
    
    
    //basic information provided and intial values set
    string public Name = "JP Pietersen";
    string public Club = "Sharks";
    uint256 public bonus = 0;
    uint256 goals = 0;
    
    
   //struct allows all data to be stored in a single variable, making it easier for future access
   //All necessary player info
    struct Player_details{
        string Player_birthday;
        string Player_nationality;
        string Player_address;
    } 
    //Allows values to be assigned from constructor and viewed once deployed
    Player_details public PlayerDetails;
    
    
    //All necessary club info
    struct Franchise_details{
        string Franchise_name;
        string Franchise_address;
        string Club_representative;
    }
    Franchise_details public FranchiseDetails;
    
    //define beginning and end of contract term
    struct term{
        string Start;
        string End;
    }
    term public Term;
    
    //secondhand data and payment details
    struct retainer_contracts{
        uint256 Salary;
        uint256 Bonus;
        string Vehicle;
        string Housing;
    }
    retainer_contracts public RetainerContracts;
    
    //All values of above structs assigned in this constructor
    constructor() public{
        PlayerDetails.Player_birthday = "July 12, 1986";
        PlayerDetails.Player_nationality = "South African";
        PlayerDetails.Player_address = "123 street st";
        
        FranchiseDetails.Franchise_name = "Sharks";
        FranchiseDetails.Franchise_address = "123 Sharks st";
        FranchiseDetails.Club_representative = "Joe Represent";
        
        Term.Start = "June 14th, 2021";
        Term.End = "December 31st, 2021";
        
        RetainerContracts.Salary = 50000;
        RetainerContracts.Bonus = 1;
        RetainerContracts.Vehicle = "An electric scooter";
        RetainerContracts.Housing = "A cardboard box";
    }
    
    uint256 multiplier = 0;
    
    //Athletes goals in the season
    function setGoals(uint256 _goals) public{
        goals = _goals;
        
    }
    
    //find bonus payment due
   function getBonus() public payable returns(uint256){
        //bonus = 0;
        if(goals == 10){
        bonus = 500;
        }else if(goals >= 10){
            multiplier = goals / 10;
            
            bonus = multiplier*500;
            
        }
        return bonus;
    }
    
    
    
}
