// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract Transactions {
    uint256 transactionCount;

    event Transfer(address from, address receiver, uint amount, string message, uint256 timestamp, string keyword );

    // specifying what properties is this object have and of what type are they gonna be 
    struct TransferStruct {
        address sender;
        address receiver;
        uint amount;
        string message;
        uint256 timestamp;
        string keyword;

    }

    // Array of different objects transactions being store 
    TransferStruct[] transactions;

    // this function is a public class meaning everybody can access this function
    function addToBlockchain(address payable receiver, uint amount, string memory message, string memory keyword ) public {
        transactionCount += 1;
        
        // store all the transactions that come through it 
        transactions.push(TransferStruct(msg.sender, receiver, amount, message, block.timestamp, keyword));

        // transfer the amount 
        emit Transfer(msg.sender, receiver, amount, message, block.timestamp, keyword);

    }

    // returns an array of different structures and it's gonna get it from memory
    function getAllTransactions() public view returns (TransferStruct[] memory) {
        return transactions;
    }

    function getTransactionCount() public view returns (uint256) {
        return transactionCount;
    }


}