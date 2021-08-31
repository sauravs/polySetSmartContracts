// SPDX-License-Identifier: MIT

pragma solidity ^0.7.0;


import 'https://github.com/OpenZeppelin/openzeppelin-contracts/blob/solc-0.6/contracts/token/ERC20/ERC20.sol';

contract TokenA is ERC20 {
    
    
constructor() ERC20('Mock Token A', 'MTOA') public {

      _mint(msg.sender , 10000000 * 10 ** 18);
 
}
    
}
