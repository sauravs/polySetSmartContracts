
// SPDX-License-Identifier: MIT

pragma solidity 0.6.10;

interface ICreateSet {
    function create(
        address[] memory _components,
        int256[] memory _units,
        address[] memory _modules,
        address _manager,
        string memory _name,
        string memory _symbol
      
    )
        external
        returns (address);
}


// 

// interface IMySet {
    
//     function getDefaultPositionRealUnit(address _component) external view returns(int256);
    
// }


// interface IBasicIssuanceModule {

    
// }

contract CREATESET {
    
    address public SetTokenCreatorMaticAddress = 0x83421392392E921128dBc9bd8F990C868dE8d1Ec;
    address public ControllerMaticAddress = 0x5290E850007809b698767C724F10C0C62898E6F0 ;
    address public IntegrationRegistryMaticAddress = 0x272c358303b2eD66d2cAB2Bf08156FA1f9B2c337 ;
    address public PriceOracleMaticAddress = 0xDFEA02F2824Ee177733d6f108005E95C85D1D4bE ;  // Invalid
    address public SetValuerMaticAddress = 0xE2Fc2E82eD2240ef40B75B41D645Fdf61C39CBA7 ;
    address public BasicIssuanceModuleMaticAddress = 0x5c43850083bc51FD9cBE37123D11EEde49a3c03f ;
    
    address public maticAToken = 0x720ddAa73C16B12b5AB6362BacCB504cFd907121 ;
    address public maticBToken = 0x425783dE6E1C57903eD5eb457208eCB9D224965C ;
    
   //address public maticsetTokenCDaddress = 0xAA95475250F5849073731D824d1f8EE011abFdE5;
    
    
    
    uint public BASE_PRICE ;
    
    //address public manager ;
    
    
    
        
    modifier onlyManager {
        require (msg.sender == 0x3793f758a36c04B51a520a59520e4d845f94F9F2 , 'Only Manager has right to execute this function');
        _;
        
    }
    


    function createMySet(
        address[] memory _components,
        int256[] memory _units,
        address[] memory _modules,
        address _manager,
        string memory _name,
        string memory _symbol 
         ) external returns (address) {
        
          ICreateSet createSet = ICreateSet(SetTokenCreatorMaticAddress) ;
          address[] memory components = _components;
          int256[] memory uints = _units;
          address[] memory modules = _modules;
          address manager = _manager;
          string memory name = _name;
          string memory symbol = _symbol;
      
         
        return createSet.create(components, uints ,modules ,manager , name , symbol  );
        
        

        }
        
        
      
        
        
        
        }
        
        
        
 

