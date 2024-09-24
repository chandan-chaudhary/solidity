const { ethers } = require("hardhat");
const { buildModule } = require("@nomicfoundation/hardhat-ignition/modules");

module.exports = buildModule("MyContractModule", (m) => {
  const myContract = m.contract("MyContract");
  return { myContract };
});
// async function main() {
//     // Get the contract to deploy
//     // const MyContract = await ethers.getContractFactory("MyContract");

//     // Deploy the contract
//     console.log("Deploying the contract...");
//     const myContract = await ethers.deployContract('MyContract');
//     // await myContract.deployed();

//     console.log("MyContract deployed to:", myContract.address);
//   }

//   // We recommend this pattern to be able to use async/await everywhere
//   // and properly handle errors.
//   main().catch((error) => {
//     console.error(error);
//     process.exitCode = 1;
//   });
