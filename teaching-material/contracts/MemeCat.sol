// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/utils/Strings.sol";

contract MemeCat is ERC721Enumerable {
    using Counters for Counters.Counter;
    using Strings for uint256;

    Counters.Counter private _tokenIds;

    uint256 public constant MAX_SUPPLY = 4;
    uint256 public mintPrice = 0.5 ether;
    string baseURI;
    string public baseExtension = ".json";

    constructor(string memory initBaseURI)
      ERC721("MemeCat", "MMC")
    {
      baseURI = initBaseURI;
    }

    function mintMemeCat()
      public
      payable
      returns (uint256)
    {
      require(
        totalSupply() + 1 <= MAX_SUPPLY,
        "Sale would exceed max supply"
      );

      uint256 mintIndex = totalSupply();
      _safeMint(msg.sender, mintIndex);
      return mintIndex;
    }

    function tokenURI(uint256 tokenId)
        public
        view
        virtual
        override
        returns (string memory)
    {
        require(
            _exists(tokenId),
            "ERC721Metadata: URI query for nonexistent token"
        );

        return string(abi.encodePacked(baseURI, tokenId.toString(), baseExtension));
    }
}