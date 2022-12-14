pragma solidity 0.7.6;

import "./interfaces/IDeployer01.sol";
import "./Pool.sol";

contract Deployer01 is IDeployer01 {
    function deploy(address poolToken, address uniPool, address setting, string memory tradePair) external override returns (address, address) {
        Pool pool = new Pool(poolToken, uniPool, setting, tradePair);
        return (address(pool), pool.debtToken());
    }
}
