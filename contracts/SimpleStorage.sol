// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27; // solidity version

contract SimpleStorage {
    string public text = 'Hello World!';
    uint256 public favNum;

    Person[] public people;
    mapping(uint256 => string) public idToName;
    struct Person {
        uint256 choosenNo;
        string name;
    }

    function showFavNum(uint256 _favNum) public {
        favNum = _favNum;
    }

    // view used to show value returned
    // pure is used to only calculate some complexity whiout paying gas in transaction
    function showNum() public view returns (uint256) {
        return favNum;
    }

    function addPeople(string memory _name, uint256 _choosenNo) public {
        people.push(Person(_choosenNo, _name));
        idToName[_choosenNo] = _name;
    }
}
