// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.24;

contract Mother{

    address public child;

    function setChild(address _child) external {
        child = _child;
    }

    function callChild(uint256 _newNum) external {

        IChild(child).setNum(_newNum);  // normal function call

        bytes memory calldatas = abi.encodeWithSelector(IChild.setNum.selector, _newNum);

        //(bool success,) = child.call{value:0}(calldatas);// low level call

        (bool success,) = child.delegatecall(calldatas);

        require(success);
        



    }



}




interface IChild {

    function setNum(uint256 _newNum)external;
    
}