# HistoricalBookCovers
HistoricalBookCovers is an Ethereum smart contract that enables the creation and management of non-fungible tokens (NFTs) representing historical book covers from various museums around the world. The smart contract stores metadata for each NFT, including the book name, category, subject, author, publication date, country, continent, and museum. This project is designed for developers who are interested in learning how to create NFTs with Solidity and interact with them using a web3-enabled Ethereum wallet. It includes a smart contract written in Solidity, along with documentation and example code to help you get started.

## Installation
To install the smart contract, you'll need to have the following prerequisites installed:

- [Node.js](https://nodejs.org/en) version 12.0 or later
- [Truffle](https://trufflesuite.com/truffle/) version 5.0 or later
- [Ganache](https://trufflesuite.com/ganache/) version 2.0 or later
Once you have the prerequisites installed, follow these steps:

1. Clone the repository:

```bash
git clone https://github.com/hajihashemabad/HistoricalBookCovers.git
```

2. Install the dependencies:

```bash
cd HistoricalBookCovers
npm install
```

2. Compile the smart contract:

```python
truffle compile
```
3. Deploy the smart contract to a local Ganache instance:

```css
truffle migrate --reset --network development
```

## Usage
To use the smart contract, you can interact with it using a web3-enabled Ethereum wallet such as [MetaMask](https://metamask.io/).

Here's a Code of how you can mint a new NFT with book information:

```javascript
const HistoricalBookCovers = artifacts.require("HistoricalBookCovers");

  async function main() {
  const contract = await HistoricalBookCovers.deployed();
  const recipient = "0x1234567890123456789012345678901234567890";
  const tokenURI = "https://example.com/metadata/image.json";
  const name = "Book Name";
  const category = "Category Name";
  const subject = "Subject Name";
  const author = "Author Name";
  const publicationDate = "2023-01-01";
  const country = "Country Name";
  const continent = "Continent Name";
  const museum = "Museum Name";
  const tokenId = await contract.mintNFT(
    recipient,
    tokenURI,
    name,
    category,
    subject,
    author,
    publicationDate,
    country,
    continent,
    museum
  );
  console.log(`Minted NFT with token ID ${tokenId}`);
}

main();
```
In this example, we're using the mintNFT function to mint a new NFT with book information. We're passing the recipient address, image metadata URI, and book information as arguments. The function returns the new token ID, which we're logging to the console.

You can also retrieve the book information for an existing NFT using the getBookInfo function:

```javascript
const HistoricalBookCovers = artifacts.require("HistoricalBookCovers");

async function main() {
  const contract = await HistoricalBookCovers.deployed();
  const tokenId = 1;
  const bookInfo = await contract.getBookInfo(tokenId);
  console.log(bookInfo);
}

main();
```
In this example, we're using the `getBookInfo` function to retrieve the book information for an existing NFT with token ID 1. The function returns a BookInfo struct, which we're logging to the console.

## Setting up a connection to a Web3 Contract

1. Install the required dependencies: `@openzeppelin/contracts` and a Web3 provider such as `web3.js`.
2. Connect to the Ethereum network using the Web3 provider:
```javascript
const Web3 = require("web3");
const web3 = new Web3("https://mainnet.infura.io/v3/<INFURA-PROJECT-ID>");
```
Replace `<INFURA-PROJECT-ID>` with Infura project ID.
3. Load the contract `ABI` and address:
```javascript
const contractABI = <ABI-JSON>; // Replace <ABI-JSON> with the ABI JSON of the contract
const contractAddress = "<CONTRACT-ADDRESS>"; // Replace <CONTRACT-ADDRESS> with the address of the deployed contract
```
4. Create a contract instance:
```javascript
const contract = new web3.eth.Contract(contractABI, contractAddress);
```
5. Call the `mintNFT` function to mint a new NFT:
```javascript
const recipient = "<RECIPIENT-ADDRESS>"; // Replace <RECIPIENT-ADDRESS> with the address of the recipient
const tokenURI = "<TOKEN-URI>"; // Replace <TOKEN-URI> with the URI of the token
const name = "<NAME>"; // Replace <NAME> with the name of the book
const category = "<CATEGORY>"; // Replace <CATEGORY> with the category of the book
const subject = "<SUBJECT>"; // Replace <SUBJECT> with the subject of the book
const author = "<AUTHOR>"; // Replace <AUTHOR> with the author of the book
const publicationDate = "<PUBLICATION-DATE>"; // Replace <PUBLICATION-DATE> with the publication date of the book
const country = "<COUNTRY>"; // Replace <COUNTRY> with the country of the book
const continent = "<CONTINENT>"; // Replace <CONTINENT> with the continent of the book
const museum = "<MUSEUM>"; // Replace <MUSEUM> with the museum of the book

contract.methods
  .mintNFT(
    recipient,
    tokenURI,
    name,
    category,
    subject,
    author,
    publicationDate,
    country,
    continent,
    museum
  )
  .send({ from: "<SENDER-ADDRESS>", gas: 1000000 })
  .then(function (result) {
    console.log("NFT minted with ID:", result);
  })
  .catch(function (error) {
    console.error("Error minting NFT:", error);
  });
  ```
Replace `<SENDER-ADDRESS>` with the address of the sender.

6. Call the `getBookInfo` function to retrieve information about a specific NFT:
```javascript
const tokenId = "<TOKEN-ID>"; // Replace <TOKEN-ID> with the ID of the token

contract.methods
  .getBookInfo(tokenId)
  .call()
  .then(function (result) {
    console.log("Book info:", result);
  })
  .catch(function (error) {
    console.error("Error getting book info:", error);
  });
  ```
## Arabic Documents
In addition to the main `HistoricalBookCovers` contract, we have also developed an additional contract called `ArabicDocuments`. This contract is designed to allow for the creation and storage of Arabic documents associated with tokens on the `HistoricalBookCovers` contract.

To use the `ArabicDocuments` contract, you will need to deploy it to the blockchain along with the `HistoricalBookCovers` contract. Once deployed, you can call the `addDocument` function on the `ArabicDocuments` contract to associate a document URI with a specific token ID on the `HistoricalBookCovers` contract. You can then use the `getDocument` function on the `ArabicDocuments` contract to retrieve the document URI associated with a specific token ID.

For more information on the `ArabicDocuments`[ArabicDocuments.sol] contract and how to use it, please refer to the separate document titled [ArabicDocuments.md](ArabicDocuments.md) in this repository.

## Conclusion
The `HistoricalBookCovers` contract and the `ArabicDocuments` contract provide a simple way to represent and store historical book covers and associated documents on the blockchain. They can be easily integrated into your smart contract project and customized to fit your specific use case.
## Contributing
We welcome contributions to the HistoricalBookCovers project! If you'd like to contribute, please fork the repository and create a new branch for your changes. Once you've made your changes, submit a pull request and we'll review it as soon as possible.

## License
HistoricalBookCovers is released under the MIT [LICENSE](LICENSE).

## Authors
- [Abdelnasser Hajihashemabad](https://github.com/hajihashemabad)

## Contact
If you have any questions or comments about HistoricalBookCovers, feel free to reach out to me at [Email](mailto:info@abdelnasser.com).
