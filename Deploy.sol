// SPDX-License-Identifier: Unlicensed
pragma solidity 0.6.12;

contract Toyota {
    Car public newCar;
    // function deployCar and call it.
    
    function deploy() public {
        newCar = new Car('Red');    
    }
    
    function change() public {
        newCar.changeColor("Blue");
    }
    
}

contract Car {
    string public color;
    
    constructor(string memory _color) public{
        color = _color;
    }
    
    function changeColor(string memory _newColor) public {
        color = _newColor;
    }
}


//Any frontend to access the contract, need: 
// 1 - ABI  
// 2 - Contract Address  

// ABI -> Abstract Binary Interface
// [
// 	{
// 		"inputs": [
// 			{
// 				"internalType": "string",
// 				"name": "_color",
// 				"type": "string"
// 			}
// 		],
// 		"stateMutability": "nonpayable",
// 		"type": "constructor"
// 	},
// 	{
// 		"inputs": [
// 			{
// 				"internalType": "string",
// 				"name": "_newColor",
// 				"type": "string"
// 			}
// 		],
// 		"name": "changeColor",
// 		"outputs": [],
// 		"stateMutability": "nonpayable",
// 		"type": "function"
// 	},
// 	{
// 		"inputs": [],
// 		"name": "color",
// 		"outputs": [
// 			{
// 				"internalType": "string",
// 				"name": "",
// 				"type": "string"
// 			}
// 		],
// 		"stateMutability": "view",
// 		"type": "function"
// 	}
// ]

// Bytecode -> Machine understandable code.
// {
// 	"linkReferences": {},
// 	"object": "608060405234801561001057600080fd5b506040516104bb3803806104bb8339818101604052602081101561003357600080fd5b810190808051604051939291908464010000000082111561005357600080fd5b8382019150602082018581111561006957600080fd5b825186600182028301116401000000008211171561008657600080fd5b8083526020830192505050908051906020019080838360005b838110156100ba57808201518184015260208101905061009f565b50505050905090810190601f1680156100e75780820380516001836020036101000a031916815260200191505b50604052505050806000908051906020019061010492919061010b565b50506101a8565b828054600181600116156101000203166002900490600052602060002090601f016020900481019282601f1061014c57805160ff191683800117855561017a565b8280016001018555821561017a579182015b8281111561017957825182559160200191906001019061015e565b5b509050610187919061018b565b5090565b5b808211156101a457600081600090555060010161018c565b5090565b610304806101b76000396000f3fe608060405234801561001057600080fd5b50600436106100365760003560e01c80636aa2afd51461003b578063cf08fed5146100f6575b600080fd5b6100f46004803603602081101561005157600080fd5b810190808035906020019064010000000081111561006e57600080fd5b82018360208201111561008057600080fd5b803590602001918460018302840111640100000000831117156100a257600080fd5b91908080601f016020809104026020016040519081016040528093929190818152602001838380828437600081840152601f19601f820116905080830192505050505050509192919290505050610179565b005b6100fe610193565b6040518080602001828103825283818151815260200191508051906020019080838360005b8381101561013e578082015181840152602081019050610123565b50505050905090810190601f16801561016b5780820380516001836020036101000a031916815260200191505b509250505060405180910390f35b806000908051906020019061018f929190610231565b5050565b60008054600181600116156101000203166002900480601f0160208091040260200160405190810160405280929190818152602001828054600181600116156101000203166002900480156102295780601f106101fe57610100808354040283529160200191610229565b820191906000526020600020905b81548152906001019060200180831161020c57829003601f168201915b505050505081565b828054600181600116156101000203166002900490600052602060002090601f016020900481019282601f1061027257805160ff19168380011785556102a0565b828001600101855582156102a0579182015b8281111561029f578251825591602001919060010190610284565b5b5090506102ad91906102b1565b5090565b5b808211156102ca5760008160009055506001016102b2565b509056fea2646970667358221220d3cc9751ddd09357f0434c4b3e0c364509f2812412779e89d07174a725a395f064736f6c634300060c0033",
// 	"opcodes": "PUSH1 0x80 PUSH1 0x40 MSTORE CALLVALUE DUP1 ISZERO PUSH2 0x10 JUMPI PUSH1 0x0 DUP1 REVERT JUMPDEST POP PUSH1 0x40 MLOAD PUSH2 0x4BB CODESIZE SUB DUP1 PUSH2 0x4BB DUP4 CODECOPY DUP2 DUP2 ADD PUSH1 0x40 MSTORE PUSH1 0x20 DUP2 LT ISZERO PUSH2 0x33 JUMPI PUSH1 0x0 DUP1 REVERT JUMPDEST DUP2 ADD SWAP1 DUP1 DUP1 MLOAD PUSH1 0x40 MLOAD SWAP4 SWAP3 SWAP2 SWAP1 DUP5 PUSH5 0x100000000 DUP3 GT ISZERO PUSH2 0x53 JUMPI PUSH1 0x0 DUP1 REVERT JUMPDEST DUP4 DUP3 ADD SWAP2 POP PUSH1 0x20 DUP3 ADD DUP6 DUP2 GT ISZERO PUSH2 0x69 JUMPI PUSH1 0x0 DUP1 REVERT JUMPDEST DUP3 MLOAD DUP7 PUSH1 0x1 DUP3 MUL DUP4 ADD GT PUSH5 0x100000000 DUP3 GT OR ISZERO PUSH2 0x86 JUMPI PUSH1 0x0 DUP1 REVERT JUMPDEST DUP1 DUP4 MSTORE PUSH1 0x20 DUP4 ADD SWAP3 POP POP POP SWAP1 DUP1 MLOAD SWAP1 PUSH1 0x20 ADD SWAP1 DUP1 DUP4 DUP4 PUSH1 0x0 JUMPDEST DUP4 DUP2 LT ISZERO PUSH2 0xBA JUMPI DUP1 DUP3 ADD MLOAD DUP2 DUP5 ADD MSTORE PUSH1 0x20 DUP2 ADD SWAP1 POP PUSH2 0x9F JUMP JUMPDEST POP POP POP POP SWAP1 POP SWAP1 DUP2 ADD SWAP1 PUSH1 0x1F AND DUP1 ISZERO PUSH2 0xE7 JUMPI DUP1 DUP3 SUB DUP1 MLOAD PUSH1 0x1 DUP4 PUSH1 0x20 SUB PUSH2 0x100 EXP SUB NOT AND DUP2 MSTORE PUSH1 0x20 ADD SWAP2 POP JUMPDEST POP PUSH1 0x40 MSTORE POP POP POP DUP1 PUSH1 0x0 SWAP1 DUP1 MLOAD SWAP1 PUSH1 0x20 ADD SWAP1 PUSH2 0x104 SWAP3 SWAP2 SWAP1 PUSH2 0x10B JUMP JUMPDEST POP POP PUSH2 0x1A8 JUMP JUMPDEST DUP3 DUP1 SLOAD PUSH1 0x1 DUP2 PUSH1 0x1 AND ISZERO PUSH2 0x100 MUL SUB AND PUSH1 0x2 SWAP1 DIV SWAP1 PUSH1 0x0 MSTORE PUSH1 0x20 PUSH1 0x0 KECCAK256 SWAP1 PUSH1 0x1F ADD PUSH1 0x20 SWAP1 DIV DUP2 ADD SWAP3 DUP3 PUSH1 0x1F LT PUSH2 0x14C JUMPI DUP1 MLOAD PUSH1 0xFF NOT AND DUP4 DUP1 ADD OR DUP6 SSTORE PUSH2 0x17A JUMP JUMPDEST DUP3 DUP1 ADD PUSH1 0x1 ADD DUP6 SSTORE DUP3 ISZERO PUSH2 0x17A JUMPI SWAP2 DUP3 ADD JUMPDEST DUP3 DUP2 GT ISZERO PUSH2 0x179 JUMPI DUP3 MLOAD DUP3 SSTORE SWAP2 PUSH1 0x20 ADD SWAP2 SWAP1 PUSH1 0x1 ADD SWAP1 PUSH2 0x15E JUMP JUMPDEST JUMPDEST POP SWAP1 POP PUSH2 0x187 SWAP2 SWAP1 PUSH2 0x18B JUMP JUMPDEST POP SWAP1 JUMP JUMPDEST JUMPDEST DUP1 DUP3 GT ISZERO PUSH2 0x1A4 JUMPI PUSH1 0x0 DUP2 PUSH1 0x0 SWAP1 SSTORE POP PUSH1 0x1 ADD PUSH2 0x18C JUMP JUMPDEST POP SWAP1 JUMP JUMPDEST PUSH2 0x304 DUP1 PUSH2 0x1B7 PUSH1 0x0 CODECOPY PUSH1 0x0 RETURN INVALID PUSH1 0x80 PUSH1 0x40 MSTORE CALLVALUE DUP1 ISZERO PUSH2 0x10 JUMPI PUSH1 0x0 DUP1 REVERT JUMPDEST POP PUSH1 0x4 CALLDATASIZE LT PUSH2 0x36 JUMPI PUSH1 0x0 CALLDATALOAD PUSH1 0xE0 SHR DUP1 PUSH4 0x6AA2AFD5 EQ PUSH2 0x3B JUMPI DUP1 PUSH4 0xCF08FED5 EQ PUSH2 0xF6 JUMPI JUMPDEST PUSH1 0x0 DUP1 REVERT JUMPDEST PUSH2 0xF4 PUSH1 0x4 DUP1 CALLDATASIZE SUB PUSH1 0x20 DUP2 LT ISZERO PUSH2 0x51 JUMPI PUSH1 0x0 DUP1 REVERT JUMPDEST DUP2 ADD SWAP1 DUP1 DUP1 CALLDATALOAD SWAP1 PUSH1 0x20 ADD SWAP1 PUSH5 0x100000000 DUP2 GT ISZERO PUSH2 0x6E JUMPI PUSH1 0x0 DUP1 REVERT JUMPDEST DUP3 ADD DUP4 PUSH1 0x20 DUP3 ADD GT ISZERO PUSH2 0x80 JUMPI PUSH1 0x0 DUP1 REVERT JUMPDEST DUP1 CALLDATALOAD SWAP1 PUSH1 0x20 ADD SWAP2 DUP5 PUSH1 0x1 DUP4 MUL DUP5 ADD GT PUSH5 0x100000000 DUP4 GT OR ISZERO PUSH2 0xA2 JUMPI PUSH1 0x0 DUP1 REVERT JUMPDEST SWAP2 SWAP1 DUP1 DUP1 PUSH1 0x1F ADD PUSH1 0x20 DUP1 SWAP2 DIV MUL PUSH1 0x20 ADD PUSH1 0x40 MLOAD SWAP1 DUP2 ADD PUSH1 0x40 MSTORE DUP1 SWAP4 SWAP3 SWAP2 SWAP1 DUP2 DUP2 MSTORE PUSH1 0x20 ADD DUP4 DUP4 DUP1 DUP3 DUP5 CALLDATACOPY PUSH1 0x0 DUP2 DUP5 ADD MSTORE PUSH1 0x1F NOT PUSH1 0x1F DUP3 ADD AND SWAP1 POP DUP1 DUP4 ADD SWAP3 POP POP POP POP POP POP POP SWAP2 SWAP3 SWAP2 SWAP3 SWAP1 POP POP POP PUSH2 0x179 JUMP JUMPDEST STOP JUMPDEST PUSH2 0xFE PUSH2 0x193 JUMP JUMPDEST PUSH1 0x40 MLOAD DUP1 DUP1 PUSH1 0x20 ADD DUP3 DUP2 SUB DUP3 MSTORE DUP4 DUP2 DUP2 MLOAD DUP2 MSTORE PUSH1 0x20 ADD SWAP2 POP DUP1 MLOAD SWAP1 PUSH1 0x20 ADD SWAP1 DUP1 DUP4 DUP4 PUSH1 0x0 JUMPDEST DUP4 DUP2 LT ISZERO PUSH2 0x13E JUMPI DUP1 DUP3 ADD MLOAD DUP2 DUP5 ADD MSTORE PUSH1 0x20 DUP2 ADD SWAP1 POP PUSH2 0x123 JUMP JUMPDEST POP POP POP POP SWAP1 POP SWAP1 DUP2 ADD SWAP1 PUSH1 0x1F AND DUP1 ISZERO PUSH2 0x16B JUMPI DUP1 DUP3 SUB DUP1 MLOAD PUSH1 0x1 DUP4 PUSH1 0x20 SUB PUSH2 0x100 EXP SUB NOT AND DUP2 MSTORE PUSH1 0x20 ADD SWAP2 POP JUMPDEST POP SWAP3 POP POP POP PUSH1 0x40 MLOAD DUP1 SWAP2 SUB SWAP1 RETURN JUMPDEST DUP1 PUSH1 0x0 SWAP1 DUP1 MLOAD SWAP1 PUSH1 0x20 ADD SWAP1 PUSH2 0x18F SWAP3 SWAP2 SWAP1 PUSH2 0x231 JUMP JUMPDEST POP POP JUMP JUMPDEST PUSH1 0x0 DUP1 SLOAD PUSH1 0x1 DUP2 PUSH1 0x1 AND ISZERO PUSH2 0x100 MUL SUB AND PUSH1 0x2 SWAP1 DIV DUP1 PUSH1 0x1F ADD PUSH1 0x20 DUP1 SWAP2 DIV MUL PUSH1 0x20 ADD PUSH1 0x40 MLOAD SWAP1 DUP2 ADD PUSH1 0x40 MSTORE DUP1 SWAP3 SWAP2 SWAP1 DUP2 DUP2 MSTORE PUSH1 0x20 ADD DUP3 DUP1 SLOAD PUSH1 0x1 DUP2 PUSH1 0x1 AND ISZERO PUSH2 0x100 MUL SUB AND PUSH1 0x2 SWAP1 DIV DUP1 ISZERO PUSH2 0x229 JUMPI DUP1 PUSH1 0x1F LT PUSH2 0x1FE JUMPI PUSH2 0x100 DUP1 DUP4 SLOAD DIV MUL DUP4 MSTORE SWAP2 PUSH1 0x20 ADD SWAP2 PUSH2 0x229 JUMP JUMPDEST DUP3 ADD SWAP2 SWAP1 PUSH1 0x0 MSTORE PUSH1 0x20 PUSH1 0x0 KECCAK256 SWAP1 JUMPDEST DUP2 SLOAD DUP2 MSTORE SWAP1 PUSH1 0x1 ADD SWAP1 PUSH1 0x20 ADD DUP1 DUP4 GT PUSH2 0x20C JUMPI DUP3 SWAP1 SUB PUSH1 0x1F AND DUP3 ADD SWAP2 JUMPDEST POP POP POP POP POP DUP2 JUMP JUMPDEST DUP3 DUP1 SLOAD PUSH1 0x1 DUP2 PUSH1 0x1 AND ISZERO PUSH2 0x100 MUL SUB AND PUSH1 0x2 SWAP1 DIV SWAP1 PUSH1 0x0 MSTORE PUSH1 0x20 PUSH1 0x0 KECCAK256 SWAP1 PUSH1 0x1F ADD PUSH1 0x20 SWAP1 DIV DUP2 ADD SWAP3 DUP3 PUSH1 0x1F LT PUSH2 0x272 JUMPI DUP1 MLOAD PUSH1 0xFF NOT AND DUP4 DUP1 ADD OR DUP6 SSTORE PUSH2 0x2A0 JUMP JUMPDEST DUP3 DUP1 ADD PUSH1 0x1 ADD DUP6 SSTORE DUP3 ISZERO PUSH2 0x2A0 JUMPI SWAP2 DUP3 ADD JUMPDEST DUP3 DUP2 GT ISZERO PUSH2 0x29F JUMPI DUP3 MLOAD DUP3 SSTORE SWAP2 PUSH1 0x20 ADD SWAP2 SWAP1 PUSH1 0x1 ADD SWAP1 PUSH2 0x284 JUMP JUMPDEST JUMPDEST POP SWAP1 POP PUSH2 0x2AD SWAP2 SWAP1 PUSH2 0x2B1 JUMP JUMPDEST POP SWAP1 JUMP JUMPDEST JUMPDEST DUP1 DUP3 GT ISZERO PUSH2 0x2CA JUMPI PUSH1 0x0 DUP2 PUSH1 0x0 SWAP1 SSTORE POP PUSH1 0x1 ADD PUSH2 0x2B2 JUMP JUMPDEST POP SWAP1 JUMP INVALID LOG2 PUSH5 0x6970667358 0x22 SLT KECCAK256 0xD3 0xCC SWAP8 MLOAD 0xDD 0xD0 SWAP4 JUMPI CREATE NUMBER 0x4C 0x4B RETURNDATACOPY 0xC CALLDATASIZE GASLIMIT MULMOD CALLCODE DUP2 0x24 SLT PUSH24 0x9E89D07174A725A395F064736F6C634300060C0033000000 ",
// 	"sourceMap": "309:219:0:-:0;;;358:71;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;416:6;408:5;:14;;;;;;;;;;;;:::i;:::-;;358:71;309:219;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;:::i;:::-;;;:::o;:::-;;;;;;;;;;;;;;;;;;;;;:::o;:::-;;;;;;;"
// }

