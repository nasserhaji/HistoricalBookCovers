pragma solidity >=0.4.22 <0.9.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract HistoricalBookCovers is ERC721 {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    struct BookInfo {
        string name;
        string category;
        string subject;
        string author;
        string publicationDate;
        string country;
        string continent;
        string museum;
        string arabicDocumentURI;
    }

    mapping(uint256 => BookInfo) private _bookInfo;

    constructor() ERC721("HistoricalBookCovers", "HBC") {}

    function mintNFT(
        address recipient,
        string memory tokenURI,
        string memory name,
        string memory category,
        string memory subject,
        string memory author,
        string memory publicationDate,
        string memory country,
        string memory continent,
        string memory museum,
        string memory arabicDocumentURI
    ) public returns (uint256) {
        _tokenIds.increment();

        uint256 newTokenId = _tokenIds.current();
        _mint(recipient, newTokenId);
        _setTokenURI(newTokenId, tokenURI);

        _bookInfo[newTokenId] = BookInfo(
            name,
            category,
            subject,
            author,
            publicationDate,
            country,
            continent,
            museum,
            arabicDocumentURI
        );

        return newTokenId;
    }

    function getBookInfo(uint256 tokenId) public view returns (BookInfo memory) {
        require(_exists(tokenId), "ERC721Metadata: URI query for nonexistent token");

        return _bookInfo[tokenId];
    }
}

contract ArabicDocuments {
    mapping(uint256 => string) private _documents;

    function addDocument(uint256 tokenId, string memory documentURI) public {
        _documents[tokenId] = documentURI;
    }

    function getDocument(uint256 tokenId) public view returns (string memory) {
        return _documents[tokenId];
    }
}
