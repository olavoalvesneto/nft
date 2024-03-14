// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract ERC721 {
    string public name;
    string public symbol;

    mapping(uint256 => address) private nfts;
    mapping(address owner => mapping(address operator => bool)) private _operatorApprovals;
    mapping(address owner => uint256) private _balances;

    constructor(string memory _name, string memory _symbol) {
        name = _name;
        symbol = _symbol;
    }

    function ownerOf(uint256 tokenId) public view virtual returns (address) {
        return nfts[tokenId];
    }
}
