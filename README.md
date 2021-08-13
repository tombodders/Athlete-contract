# Athlete-contract

All .sol files can be deployed on remix.ethereum.org

Copy the file of the contract you are trying to deploy into remix. Note the solidity version in the first line of code and match the solidity compiler. 
![image](https://user-images.githubusercontent.com/31867189/129259628-0208aa22-db93-49a3-b88f-57b27b63a668.png) ![image](https://user-images.githubusercontent.com/31867189/129259667-597fd8f3-1a23-45bd-8af5-24e4db2760e9.png)

Once compiled, you can deploy the contract from the deploy tab.
![image](https://user-images.githubusercontent.com/31867189/129259738-e151ad87-87e8-490f-b342-47501b01325e.png)

One the deploy tag you there is an environment selector, the options are:
![image](https://user-images.githubusercontent.com/31867189/129259806-974f7b56-3f03-408c-be15-ee5513bfe8ee.png)

Javascript VM: Provides various accounts within remix that you can get test eth and test your contracts from. Not compatible with all functions.

Injected Web3: Will connect to metamask if you have it installed in your browser, make sure your metamask wallet is connected to a test network so as not to use real money.

![image](https://user-images.githubusercontent.com/31867189/129261770-cebe9b4c-563e-4a91-834a-92e6b5426c20.png)

Try this link to get testnet eth https://github.com/kovan-testnet/faucet
You will then get a notifcation for a gas fee everytime you change something or deploy. This is method I would recommend

Web3 Provider: Can identify a specific account that your gas fee will be taken from, this method is the hardest to set up

Once deployed, you can interact with your contract in the deployed contracts tab
![image](https://user-images.githubusercontent.com/31867189/129259491-24c6b8a3-a7af-4612-b056-dcaccff84608.png)

Athlete_contract.sol:
First deployment of an athlete smart contract. It has a function to add an athlete to a database, an associated athlete id can be used to walk through and see all entries in the database.
There are also databases for club details, term start and term end.
The function set goals is to determine a bonus payment if athlete in question reaches a certain clause, in this case it's every 10 goals.

Athlete_contract2.sol:
Second deployment of an athlete smart contract. This version gets all information input before the contract is deployed and uses the same set goals and get bonus function as the previous contract

Athlete_contract3.sol:
Third deployment of an athlete smart contract. This one uses a chainlink oracle to fetch data from a simulated API, the API simply has what would be the necessary athlete data. 
Since this method requires a chainlink oracle, there is a fee associated with the oracle of 0.1 chainlink token. These can also be acquired on a testnet

![image](https://user-images.githubusercontent.com/31867189/129264432-95011017-5160-4bad-a48d-4556faec5a3e.png)

Link to get Kovan testnet chainlink token https://kovan.chain.link/
Once you have deployed the contract, copy the contract address and send .1 link token to it.

![image](https://user-images.githubusercontent.com/31867189/129300519-dc6c2e2f-45fa-4512-991f-a8028f503e18.png)

Now that you have link token you can call the function requestAthleteData, this will call the oracle and consume the .1 chainlink token fee. 
Since this method proved ineffictive, it has only been set up to fetch the athlete name from the API.

Athlete_contract4.sol:
Fourth deployment of an athlete smart contract. This one uses AthleteDetailsGUI.html, ClubDetailsGUI.html and MockContract.html
Those three .html files are GUI's that allow interaction with the smart contract once it's deployed. The first two are used to input athlete data and club data respectively, and the third is used to display all the recieved information
In order for this to be successful, contract address and ABI need to be updated in all of the .html files.
To copy the ABI across, go to the compile tab on Remix and click on ABI at the bottom

![image](https://user-images.githubusercontent.com/31867189/129308067-234487d8-f888-43fd-bf9f-4fd05ee1a5d1.png)

Then paste that into the corresponding functions on the .html files
The contract address is found once you have deployed your contract, it can be copied from the deployed contract section in the deployed tab
![image](https://user-images.githubusercontent.com/31867189/129308259-6120696c-161a-4553-986d-1f74fe5c7395.png)




