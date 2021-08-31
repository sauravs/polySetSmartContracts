

pragma solidity 0.6.10;



interface IMySet {
    
    function getDefaultPositionRealUnit(address _component) external view returns(int256);
    
}



contract GETSETBASELINECOMPDATA {
    

    
  
    
    address public maticAToken = 0x720ddAa73C16B12b5AB6362BacCB504cFd907121 ;
    address public maticBToken = 0x425783dE6E1C57903eD5eb457208eCB9D224965C ;
    
     address public maticsetTokenPABaddress = 0x0cBD78846F2F63401639e36905b626f136E1ce39;
    
      ////////////////////////////////////////////////QUANTITY OF EACH COMPONENTS REQUIRED TO ISSUE 1 UNIT OF SET TOKEN//////////////////////////////
        
       
       
       
        function getBaselineDataComp1 () external view returns(int256) {
            
          IMySet mySet = IMySet(maticsetTokenPABaddress);
             return mySet.getDefaultPositionRealUnit(maticAToken);
            
            
         }
        
        
        function getBaselineDataComp2 () external view returns(int256) {
            
            IMySet mySet = IMySet(maticsetTokenPABaddress);
         return mySet.getDefaultPositionRealUnit(maticBToken);
            
        }
        
        
        
        
         //////////////////////////////////////////////////////////// Asset allocations (%)///////////////////////////////////////////////////////////
        
        
        
        function getComp1PercentageAllocation () external view returns(uint) {
            
            /*
            
            A+ B = 5000 + 2000 = 7000

           A% = (5000 / 7000)*100  =71.4%

           B% = (2000/ 7000) *100 = 28.57%
            
            
            */
            
    
            
        }
        
        
        
        
    
    
    
}
