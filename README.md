## proxy

## abi.encodeWithSelector:

    This function is used to encode function calls. It takes a function selector and the parameters of that function as arguments and returns the encoded data in bytes.
    The encoded data can later be used to call another contract’s function.

## IChild.setNo.selector:

    selector: This represents the first 4 bytes of the hash (keccak256) of the function signature.
    For example, if the function in IChild interface is:

    solidity

        function setNo(uint256 _newNo) external;

            The function signature would be setNo(uint256).
            The selector is bytes4(keccak256("setNo(uint256)")). This is used to identify the function you are calling in the target contract.

    _newNo:
        This is the parameter that will be passed to the setNo function. In this case, it is a uint256 value representing the new number.

    abi.encodeWithSelector(IChild.setNo.selector, _newNo):
        This encodes the selector for the setNo function along with the parameter _newNo.
        The result will be a bytes object containing the necessary data to call the setNo function with _newNo as input.

    bytes memory calldatas:
        This stores the encoded data in a bytes variable named calldatas. This encoded data can now be used to make low-level calls to the target contract (e.g., using call or delegatecall).

## Why Use abi.encodeWithSelector?

    In Solidity, low-level calls (like call, delegatecall, or staticcall) require encoded function data.
    This method allows for dynamic function calls where you don’t hardcode the call but encode it based on the function selector and parameters.




