// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

/// @title Homework 1: Exercise 2 - Solidity Programming - Part A
/// @author Jean-Baptiste Astruc
/// @notice This solidity file provides the answers to the part A of Exercise 2 of Homework 1

// Part A - String Conversion

/* We want to write a function that intakes a binary number as a string and returns a decimal integer. 
For the sake of simplicity, let's assume that the string binary input is a positive (unsigned) binary number. */

contract StringConversionToDecimal {
    /// @notice Here we build a function to convert a string into a decimal integer
    /// @param binaryString The binary representation of a string
    /// @return decimalValue The integer of the converted string
    function convertBinaryToDecimal(string calldata binaryString) external pure returns (uint256) {
        bytes calldata binaryArray = bytes(binaryString);
        uint256 decimalValue = 0;

        for (uint256 i = 0; i < binaryArray.length; i++) {
            // We implement a sanity check to be sure that it is a binary output
            require(
                binaryArray[i] == '0' || binaryArray[i] == '1',
                "Invalid binary string: must only contain '0' or '1'."
            );
            // We compute the value of the current bit using bitwise operations
            decimalValue = (decimalValue << 1) | uint8(binaryArray[i]) & 1;
        }
        return decimalValue;
    }
}