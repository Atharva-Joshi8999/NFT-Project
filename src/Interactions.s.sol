//SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;
import {Script} from "lib/forge-std/src/Script.sol";
import {BasicNft} from "../src/BasicNft.sol";
import {DevOpsTools} from "lib/foundry-devops/src/DevOpsTools.sol";

contract MintBasicNft is Script{

function run() external{

address mostRecentlyDeployed = DevOpsTools.get_most_recent_deployment("BasicNft", block.chainid);

mintNftContract(mostRecentlyDeployed);

}
function mintNftContract(address basicNftAddress) public {
    vm.startBroadcast();
    BasicNft(basicNftAddress).mintNFT("ipfs://bafybeig37ioir76s7mg5oobetncojcm3c3hxasyd4rvid4jqhy4gkaheg4/?filename=0-PUG.json");
}


}