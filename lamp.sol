/**
 *Submitted for verification at basescan.org on 2025-01-18
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Lamp {
    // État de la lampe
    bool public isOn;

    // Événement pour signaler un changement d'état de la lampe
    event LampToggled(bool state);

    // Constructeur pour initialiser l'état de la lampe
    constructor() {
        isOn = false; // La lampe est éteinte par défaut
    }

    // Fonction pour allumer ou éteindre la lampe
    function toggleLamp() public {
        isOn = !isOn;
        emit LampToggled(isOn);
    }

    // Fonction pour vérifier si la lampe est allumée
    function isLampOn() public view returns (string memory) {
        return isOn ? "La lampe est allumee." : "La lampe est eteinte.";
    }
}
