//SPDX-License-Identifier:MIT
pragma solidity >=0.8.0 <0.9.0;

contract SimpleStorage {
    uint256 public favoriteNumber; //We can create an event to know whenever this number is updated and respond
    event StoredNumber(
        uint indexed oldNumber,
        uint indexed newNumber,
        uint addedNumber,
        address sender
    );

    function store(uint256 newFavoriteNumber) external {
        emit StoredNumber (
            favoriteNumber,
            newFavoriteNumber,
            favoriteNumber + newFavoriteNumber,
            msg.sender
        );
        favoriteNumber = newFavoriteNumber;
    }

}
