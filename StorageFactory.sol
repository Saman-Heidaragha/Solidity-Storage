// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

import "./SimpleStorage.sol";

contract StorageFactory{

    SimpleStorage[] public listOfSimpleStorageContracts;

    function createSimpleStorageContract() public {
        SimpleStorage newSimpleStorageContract = new SimpleStorage();
        listOfSimpleStorageContracts.push(newSimpleStorageContract);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber) public {
        // Addree
        // ABI - Application Binary Interface
        //SimpleStorage mySimpleStorage = listOfSimpleStorageContracts [_simpleStorageIndex];
       listOfSimpleStorageContracts[_simpleStorageIndex].store(_newSimpleStorageNumber);
    }


        function sfGet(uint256 _simpleStorageIndex) public view returns(uint) {
            SimpleStorage mySimpleStorage = listOfSimpleStorageContracts[_simpleStorageIndex];
            return mySimpleStorage.retrieve();
        }
}
