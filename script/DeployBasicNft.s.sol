//SPDX Licence-identifier: MIT
pragma solidity ^0.8.19;

import "forge-std/Script.sol";
import "../src/BasicNft.sol";

contract DeployBasicNft is Script {

    function run() external returns (BasicNft) {
        vm.startBroadcast();
        BasicNft basicNft = new BasicNft();
        vm.stopBroadcast();
        return basicNft;
    }
}