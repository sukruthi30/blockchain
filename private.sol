//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract RandomPrivateKeyGenerator {
    
    // Event to log the generated private key
    event GeneratedPrivateKey(uint256 privateKey);
    
    // Function to generate private key using a random number
    function generatePrivateKey(uint256 randomNumber) public {
        
        // Use keccak256 hash function to generate private key
        uint256 privateKey = uint256(keccak256(abi.encodePacked(randomNumber, block.timestamp, msg.sender)));
        
        // Emit the generated private key
        emit GeneratedPrivateKey(privateKey);
    }
}
