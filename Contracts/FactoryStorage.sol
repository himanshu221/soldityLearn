//SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

import "./SimpleStorage.sol";

contract FactoryStorage {

    SimpleStorage[] public simpleStorageArray;

    function createSimpleStorage() public {
        SimpleStorage ss = new SimpleStorage();
        simpleStorageArray.push(ss);
    }
    
    function ssStore(uint256 _index,uint256 _favNo) public {
       SimpleStorage(address(simpleStorageArray[_index])).store(_favNo);
    }

    function ssRetrieve(uint256 _index) public view returns(uint256){
        return SimpleStorage(address(simpleStorageArray[_index])).retrieve();
      
    }

}
