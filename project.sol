// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AttendanceToken {
    string public name = "AttendanceToken";
    string public symbol = "ATD";
    uint8 public decimals = 18;
    uint256 public totalSupply;
    address public owner;

    mapping(address => uint256) public balanceOf;
    mapping(address => bool) public isStudent;
    mapping(address => mapping(uint256 => bool)) public attendanceRecorded;

    event Transfer(address indexed from, address indexed to, uint256 value);
    event AttendanceRewarded(address indexed student, uint256 indexed classId, uint256 tokens);

    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can call this function");
        _;
    }

    constructor() {
        owner = msg.sender;
        totalSupply = 1000000 * (10 ** uint256(decimals)); // 1 million tokens
        balanceOf[owner] = totalSupply;
    }

    function addStudent(address student) public onlyOwner {
        require(!isStudent[student], "Already a student");
        isStudent[student] = true;
    }

    function removeStudent(address student) public onlyOwner {
        require(isStudent[student], "Not a student");
        isStudent[student] = false;
    }

    function rewardAttendance(address student, uint256 classId) public onlyOwner {
        require(isStudent[student], "Address is not a registered student");
        require(!attendanceRecorded[student][classId], "Attendance already rewarded for this class");

        uint256 rewardTokens = 10 * (10 ** uint256(decimals)); // 10 tokens per class
        require(balanceOf[owner] >= rewardTokens, "Not enough tokens in reserve");

        attendanceRecorded[student][classId] = true;
        balanceOf[owner] -= rewardTokens;
        balanceOf[student] += rewardTokens;

        emit AttendanceRewarded(student, classId, rewardTokens);
        emit Transfer(owner, student, rewardTokens);
    }
}