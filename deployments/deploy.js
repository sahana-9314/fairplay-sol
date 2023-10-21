const { ethers, upgrades } = require('hardhat');

async function main() {
  // Load the contract and its factory
  const SendMoneyExample = await ethers.getContractFactory('SendMoneyExample');
  
  // Deploy the contract
  const sendMoneyExample = await SendMoneyExample.deploy();

  await sendMoneyExample.deployed();

  console.log('SendMoneyExample Contract Deployed to Address:', sendMoneyExample.address);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });

    