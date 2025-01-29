// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

/// @title Homework 1: Exercise 2 - Solidity Programming - Part B
/// @author Jean-Baptiste Astruc
/// @notice This solidity file provides the answers to the part B of Exercise 2 of Homework 1

// Part B -  Masking and Bitwise Operations

/* In this part, we implement bit-shifted masking in order to take an uint8 type and return an array of integers,
that when added together, will return the number we originally put in the function. */

contract BitShiftedMasking {
    /// @notice Here we build a function to apply bit-shifted masking
    /// @param numberSelected The number chosen
    /// @return finalArray The array from which the sum will give the number chosen at the beginning
    function obtainBitwiseValues(uint8 numberSelected) public pure returns (uint8[] memory) {
        uint8[] memory finalArray = new uint8[](8);
        uint8 mask = 1; // This mask corresponds to a start at 0000 0001
        
        for (uint8 i = 0; i < 8; i++) {
            uint8 bitValue = numberSelected & mask; // We apply the mask
            finalArray[i] = bitValue; // We store the value
            mask = mask << 1; // We shift the mask to the left
        }
        return finalArray;
    }
}