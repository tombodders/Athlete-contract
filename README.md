# Athlete-contract

All .sol files can be deployed on remix.ethereum.org

Copy the file of the contract you are trying to deploy into remix. Note the solidity version in the first line of code and match the solidity compiler. Once compiled, you can deploy the contract from the deploy tab.
One the deploy tag you there is an environment selector, the options are:
Javascript VM: Provides various accounts within remix that you can get test eth and test your contracts from. Not compatible with all functions.

Injected Web3: Will connect to metamask if you have it installed in your browser, make sure your metamask wallet is connected to a test network so as not to use real money. You will then get a notifcation for a gas fee everytime you change something or deploy. This is method I would recommend

Once deployed, you can interact with your contract in the deployed contracts tab
![image](https://user-images.githubusercontent.com/31867189/129259491-24c6b8a3-a7af-4612-b056-dcaccff84608.png)


Web3 Provider: Can identify a specific account that your gas fee will be taken from, this method is the hardest to set up

Athlete_contract.sol:
First deployment of an athlete smart contract. It has a function to add an athlete to a database, an associated athlete id can be used to walk through and see all entries in the database.
There are also databases for club details, term start and term end.
The function set goals is to determine a bonus payment if athlete in question reaches a certain clause, in this case it's every 10 goals.

Athlete_contract2.sol:
Second deployment of an athlete smart contract. This version gets all information input before the contract is deployed and uses the same set goals and get bonus function as the previous contract

