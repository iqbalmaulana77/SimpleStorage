// SPDX-License-Identifier: MIT
pragma solidity >=0.8.24 <0.9.0;

contract SimpleStorage {
    uint8 favoriteNumber;

    struct Person {
        string name;
        uint8 favoriteNumber;
    }

    Person[] public listOfPeople;

    mapping(string => uint8) public nameToFavoriteNumber;

    function store(uint8 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns(uint8) {
        return favoriteNumber;
    }

    function addPerson(string calldata _name, uint8 _favoriteNumber) public {
        listOfPeople.push(Person(_name, _favoriteNumber));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
