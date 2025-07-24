// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "forge-std/Test.sol";
import {BasicNft} from "../src/BasicNft.sol";
import {DeployBasicNft} from "../script/DeployBasicNft.s.sol";

contract BasicNftTest is Test {
    DeployBasicNft public deployer;
    BasicNft public basicNft;
    address public USER = makeAddr("user");

    string public constant PUGG = "ipfs://bafybeig37ioir76s7mg5oobetncojcm3c3hxasyd4rvid4jqhy4gkaheg4/?filename=0-PUG.json";

    function setUp() public {
        deployer = new DeployBasicNft();
        basicNft = deployer.run();
    }

    function testNameIsCorrect() public {
        string memory actualName = basicNft.name();
        string memory expectedName = "Dogie";
        assertEq(
            keccak256(abi.encodePacked(actualName)),
            keccak256(abi.encodePacked(expectedName))
        );
    }


    function testMint() public {
        vm.prank(USER);
        basicNft.mintNFT(PUGG);

        assertEq(basicNft.balanceOf(USER), 1);
        assertEq(basicNft.tokenURI(0), PUGG);
    }
}
