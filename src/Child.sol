// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.24;

contract Child{
    uint256 number = 4747;

    function setNum(uint256 _newNum)external{
        number = _newNum;
    }

}