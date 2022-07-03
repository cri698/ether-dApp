import abi from './Transactions.json';



export const contractABI = abi.abi;
export const contractAddress = 'Transactions-deployed-to';
// $npx hardhat run scripts/deploy.js --network goerli
// To get the Transactions-deployed-to contract