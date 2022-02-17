// SPDX-License-Identifier: MIT

pragma solidity >= 0.6.0 < 0.9.0;

contract SimpleStorage{
    uint256 favNumber;

    struct People{
        string name;
        uint256 favNo;
    }

    People[] public peopArray;

    mapping(string => uint256) public map;

    function addPeople(string memory _name,uint256 _favNo) public
    {
        peopArray.push(People(_name,_favNo));
        map[_name] = _favNo;
    }

    function store(uint256 _favNo) public {
        favNumber = _favNo;
    }

    function retrieve() public view returns(uint256) {
        return favNumber;
    }
}