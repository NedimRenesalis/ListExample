pragma solidity ^0.5.0;

contract ListExample {

  struct DataStruct {
    address userAddress;
    uint userID;
  }

  DataStruct[] public records;

  function createRecord1(address _userAddress, uint _userID) public returns(uint recordNumber) {
    DataStruct memory newRecord;
    newRecord.userAddress = _userAddress;
    newRecord.userID    = _userID;
    return records.push(newRecord)-1;
  }

  function createRecord2(address _userAddress, uint _userID) public returns(uint recordNumber) {
    return records.push(DataStruct({userAddress:_userAddress,userID:_userID}))-1;
  }

  function getRecordCount() public view returns(uint recordCount) {
    return records.length;
  }
}
