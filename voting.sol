pragma solidity ^0.4.11;

contract Voting {
  
  mapping (bytes32 => uint8) public votesReceived;
  
  
  bytes32[] public candidateList;

  function Voting(bytes32[] candidateNames) public {
    candidateList = candidateNames;
  }

  function totalVotesFor(bytes32 candidate) public view returns (uint8) {
    assert((validCandidate(candidate) == true));
    return votesReceived[candidate];
  }

  function voteForCandidate(bytes32 candidate) public {
    assert((validCandidate(candidate) == true)) ;
    votesReceived[candidate] += 1;
  }

  function validCandidate(bytes32 candidate) public view returns (bool) {
    for(uint i = 0; i < candidateList.length; i++) {
      if (candidateList[i] == candidate) {
        return true;
      }
    }
    return false;
  }
}
