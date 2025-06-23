// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {Test} from "forge-std/Test.sol";
import {FundMe} from "../../src/FundMe.sol";
import {DeployFundMe} from "../../script/DeployFundMe.s.sol";

contract DeployFundMeTest is Test {
    DeployFundMe deployFundMe;
    FundMe fundMe;

    uint256 favNumber;
    bool greatCourse;

    function setUp() external {
        deployFundMe = new DeployFundMe();
        (fundMe, ) = deployFundMe.run();

        favNumber = 1337;
        greatCourse = true;
    }

    function testDemo() public {
        assertEq(favNumber, 1337);
        assertEq(greatCourse, true);
    }
}
