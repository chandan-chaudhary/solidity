//SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

import "./SimpleStorage.sol";

contract CreateStore {
    // initilizing SimpleStorage type and create array of SimpleStoreage Contract
    SimpleStorage[] public simpleStorageArr;

    // create new SimpleStorage contract
    function createSimpleStoreContract() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArr.push(simpleStorage);
    }

    // store value in newly created SimpleStorage contract by using index and
    // ABI => application binary interface -> it keeps the methods, function etc of deployes contract
    // using address will need to wrap up SimpleStorage
    function createStore(uint256 _storeIndex, uint256 _storeValue) public {
        SimpleStorage simpleStorage = simpleStorageArr[_storeIndex];
        simpleStorage.showFavNum(_storeValue);
    }

    // show the stored value in each SimpleStorage contract
    function showStore(uint256 _storeIndex) public view returns (uint256) {
        SimpleStorage simpleStorage = simpleStorageArr[_storeIndex];
        return simpleStorage.showNum();
    }
}
