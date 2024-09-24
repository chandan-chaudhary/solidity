const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("MyContract", function () {
  let myContract;

  // beforeEach(async function () {
  //   // Get the contract factory and signers
  //   // const MyContract = await ethers.deploy("MyContract");
  //   // [owner] = await ethers.getSigners();

  //   // Deploy the contract
   
  //   await myContract.deployed();
  // });

  it("should set the value correctly", async function () {
    const [owner] = await ethers.getSigners();

    // Set a value
    myContract = await ethers.deployContract("MyContract");
    const setValueTx = await myContract.setValue(42);

    // Wait for the transaction to be mined
    await setValueTx.wait();

    // Check if the value was set correctly
    expect(await myContract.value()).to.equal(42);
  });

  it("should update the value when setValue is called again", async function () {
    // Set a new value
    await myContract.setValue(100);

    // Check if the new value is updated correctly
    expect(await myContract.value()).to.equal(100);
  });
});
