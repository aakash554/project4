require("@nomicfoundation/hardhat-toolbox");
require('dotenv').config();

const FORK_FUJI = false;
const FORK_MAINNET = false;
let forkingData = undefined;

if (FORK_MAINNET) {
  forkingData = {
    url: "https://api.avax.network/ext/bc/C/rpcc",
  };
}
if (FORK_FUJI) {
  forkingData = {
    url: "https://api.avax-test.network/ext/bc/C/rpc",
  };
}

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.18",
  networks: {
    hardhat: {
      gasPrice: 225000000000,
      chainId: !forkingData ? 43112 : undefined, //Only specify a chainId if we are not forking
      forking: forkingData,
    },
    fuji: {
      url: "https://api.avax-test.network/ext/bc/C/rpc",
      gasPrice: 225000000000,
      chainId: 43113,
      accounts: ["*****3cb2014a8e1fb7a8815758e01882b059da4c10f292a5fdc26869e7*****"],
    },
    mainnet: {
      url: "https://api.avax.network/ext/bc/C/rpc",
      gasPrice: 225000000000,
      chainId: 43114,
      accounts: ["*****3cb2014a8e1fb7a8815758e01882b059da4c10f292a5fdc26869e7*****"],
    },
  },
  etherscan: {
    apiKey: "*****RK9KRBVT29FBF91AZKS7EPDB*****", 
  },
};
