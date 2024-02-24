// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;


contract Vote{
    struct Voter{
        string name;
        uint age;
        uint voterId;
        string gender;
        uint voteCandidateId;
        address voterAddress;
    }

    struct Candidate
    {
        string name;
        string party;
        uint age;
        string gender;
        uint candidateId;
        address candidateAddress;
        uint votes;
    }
    address electionCommission;
    address public winner;

    uint nextVoterId= 1;
    uint nextCandidateId= 1;
    uint startTime;
    uint endTime;

    mapping (uint => Voter) voterDetails;
    mapping (uint => Candidate) candidateDetails;
    bool stopVoting;
    constructor() {
        
    }

    modifier isVotingOver(){

        _;
    }
    modifier isCommisioner(){

        _;
         
    }

    function candidateRegister(string calldata _name,
    string calldata _party,
    uint age,
    string calldata _gender) 
    external {

    }
} 