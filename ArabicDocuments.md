# ArabicDocuments Contract
## The `ArabicDocuments` contract is a smart contract that allows for the creation and storage of Arabic documents associated with tokens on the `HistoricalBookCovers` contract. This document will provide a brief overview of the contract, its functions, and how to use it.

## Overview
The `ArabicDocuments` contract is a Solidity smart contract that stores document URIs associated with token IDs on the `HistoricalBookCovers` contract. It provides two main functions:

 * `addDocument(uint256 tokenId, string memory documentURI)`: Adds a document URI to the specified token ID.

* `getDocument(uint256 tokenId)`: Retrieves the document URI associated with the specified token ID.

## Usage
To use the `ArabicDocuments` contract, you will need to deploy it to the blockchain along with the `HistoricalBookCovers` contract. Once deployed, you can call the following functions on the `ArabicDocuments` contract:
`addDocument(uint256 tokenId, string memory documentURI)`
This function adds a document URI to the specified token ID. It takes two parameters:

* `tokenId`: The ID of the token to associate the document URI with.

* `documentURI`: The URI of the document to associate with the specified token ID.

Example usage:

```java
ArabicDocuments arabicDocuments = new ArabicDocuments();
uint256 tokenId = 1;
string memory documentURI = "https://example.com/arabic_document";
arabicDocuments.addDocument(tokenId, documentURI);
  ```
`getDocument(uint256 tokenId)`

This function retrieves the document URI associated with the specified token ID. It takes one parameter:

`tokenId`: The ID of the token to retrieve the document URI for.
Example usage:

```java
ArabicDocuments arabicDocuments = new ArabicDocuments();
uint256 tokenId = 1;
string memory documentURI = arabicDocuments.getDocument(tokenId);
```
## Conclusion
The `ArabicDocuments` contract provides a simple way to associate Arabic documents with tokens on the `HistoricalBookCovers` contract. It can be easily integrated into your smart contract project and customized to fit your specific use case.

## License
ArabicDocuments is released under the MIT [LICENSE](LICENSE).

## Authors
- [Abdelnasser Hajihashemabad](https://github.com/hajihashemabad)

## Contact
If you have any questions or comments about ArabicDocuments, feel free to reach out to me at [Email](mailto:info@abdelnasser.com).
