// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.4;

//INTERNAL IMPORT FOR NFT OPENZEPPELINE
import "@openzeppelin/contracts/utils/Counters.sol";

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

import "hardhat/console.sol";

contract NFTMarketplace is ERC721URIStorage {
    using Counters for Counters.Counter;

    Counters.Counter private _tokenIds;
    Counters.Counter private _itemsSold;

    address payable owner;

    mapping(uint256 => MarketItem) private idMarketItem;

    struct MarketItem {
        uint256 tokenId;
        address payable seller;
        address payable owner;
        uint256 price;
        bool sold;
    }

    event idMarketItemCreated(
        uint256 indexed tokenId,
        address seller,
        address owner,
        uint256 price, 
        bool sold
    );

    constructor() ERC721("NFT Metaverse Token", "MYNFT"){
        owner == payable(msg.sender);
    }
}

// contract aa {
//     function a() public {
//         assembly {
//             let a := add(1,2)


//         }
//     }
// }