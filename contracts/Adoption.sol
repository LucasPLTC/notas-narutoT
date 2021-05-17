pragma solidity ^0.5.0;

contract Adoption {

    address[16] public adopters;
    uint[16] public portugues;
    uint[16] public matematica;
    uint[16] public ciencia;

    // Adopting a pet
    function adopt(uint petId, uint petPo, uint petMa, uint petCi) public returns (uint) {
    
        require(petId >= 0 && petId <= 15);
        require(petPo >= 0 && petPo <= 10);
        require(petMa >= 0 && petMa <= 10);
        require(petCi >= 0 && petCi <= 10);

        adopters[petId] = msg.sender;
        portugues[petId] = petPo;
        matematica[petId] = petMa;
        ciencia[petId] = petCi;

        return petId;
    }

    // Retrieving the adopters
    function getAdopters() public view returns (address[16] memory) {
    
        return adopters;
    }

    function getPortugues() public view returns (uint[16] memory) {
    
        return portugues;
    }

    function getMatematica() public view returns (uint[16] memory) {
    
        return matematica;
    }

    function getCiencia() public view returns (uint[16] memory) {
    
        return ciencia;
    }

}