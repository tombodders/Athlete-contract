//define solidity version
pragma solidity ^0.5.1;

contract Athlete_contract{
    
    uint256 public athleteCount = 0; //keep track of how many athletes there are
    mapping(uint => Athlete) public athlete; //database for athlete info
    mapping(uint => Club) public club; // database for club info
    mapping(uint => StartDate) public start; //contract start data
    mapping(uint => EndDate) public end; //contract end data
    int public goals; //goals in the season
    int public bonus; // bonus due from # of goals
    int public multiplier; //how much to multiply bonus depending on # of goals
    
    constructor() public{ //define starting values
        goals = 0;
        bonus = 0;
    }
    
    struct Athlete{ //Athlete info wanted
        uint id;
        string name;
    }
    
    struct Club{ //Club info wanted
        string club_name;
    }
    
    struct StartDate{ //beginning of contract
        string start_month;
        string start_day;
        string start_year;
    }
    
    struct EndDate{ //end of contract
        string end_month;
        string end_day;
        string end_year;
    }
    
    function addAthlete(string memory name) public{ //function to add athlete
         athleteCount++;
         athlete[athleteCount] = Athlete(athleteCount, name);
    }
    
    function addClub(string memory club_name) public{ //function to add club
        club[0] = Club(club_name);
    }
    
    function setGoals(int  _goals) public{ //function to set current goals of athlete
        goals = _goals;
        
    }
    
    function addStart(string memory start_month, string memory start_day, string memory start_year) public{
        //start date of contract
        start[0] = StartDate(start_month, start_day, start_year);
    }
    
    function addEnd(string memory end_month, string memory end_day, string memory end_year) public{
        //end date of contract
        end[0] = EndDate(end_month, end_day, end_year);
    }
  
   
    
    function getBonus() public payable returns(int){
        //find bonus that is due depending on # goals
        //bonus = 0; //this is a test
        if(goals == 10){
        bonus = 500;
        }else if(goals >= 10){
            multiplier = goals / 10;
            
            bonus = multiplier*500;
            
        }
        return bonus;
    }
}
