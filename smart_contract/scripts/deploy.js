
const main = async () => {
  
  const Transactions = await hre.ethers.getContractFactory("Transactions");
  const transactions = await Transactions.deploy();

  await transactions.deployed();

  // when we run this script my transactions will be deploy
  // then we get the address of the smart contract will deployed in the blockchain network
  console.log("Transactions deployed to:", transactions.address);
}


const runMain = async () => {
  try {
    await main(); // this is to execute and deploy the main contract
    process.exit(0); // this mean the process went successfully
  } catch (error) {
    console.error(error);
    process.exit(1); // this mean there was a error

  }
}

runMain(); // First this line will be executed. 
//which will call runMain function 
// after that the await main() function which is responsible for deploying the contract