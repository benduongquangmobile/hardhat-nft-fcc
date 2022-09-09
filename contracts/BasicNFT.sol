// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract BacisNft is ERC721URIStorage {

  string public constant TOKEN_URI = "ipfs.io/ipfs/QmNuW8AVRatM6hD1mTLNpqAobhKhQ131gUHJ1i4C8GU4jm?filename=nftBasic.json"

  uint256 private s_tokenCounter;

  constructor() ERC721("BoredApe", "BOR") {
    s_tokenCounter = 0;
  }

  function mintNft() public returns (uint256) {
    _safeMint(msg.sender, s_tokenCounter);
    s_tokenCounter++;
    return s_tokenCounter;
  }

  function getTokenCounter() public view returns (uint256) {
    return s_tokenCounter;
  }

  function TokenUri (uint256 tokenId) public view override returns (string memory) {
    return TOKEN_URI;
  }
}
