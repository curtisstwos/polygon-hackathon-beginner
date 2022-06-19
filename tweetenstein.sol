// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0; // Version of solidity

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol"; 

contract Tweetenstein is ERC721URIStorage { // NFT name
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    constructor() ERC721("Tweetenstein", "TNFT") {} // NFT name and symbol

    function mint(string memory tokenURI) public returns(uint256){
        _tokenIds.increment();

        uint256 newItemId = _tokenIds.current();
        _safeMint(msg.sender, newItemId);
        _setTokenURI(newItemId, tokenURI);

        return newItemId;
    }


}
