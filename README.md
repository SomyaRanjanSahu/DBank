![](https://img.shields.io/badge/Project-DBank-yellow.svg)
![](https://img.shields.io/badge/Tools-ICP,_Motoko-skyblue.svg)
![](https://img.shields.io/badge/Level-Basic-green.svg)
![](https://img.shields.io/badge/Status-Complete-green.svg) 

![GitHub Actions](https://img.shields.io/badge/github%20actions-%232671E5.svg?style=for-the-badge&logo=githubactions&logoColor=white)
![Visual Studio Code](https://img.shields.io/badge/Visual%20Studio%20Code-0078d7.svg?style=for-the-badge&logo=visual-studio-code&logoColor=white)
![Ubuntu](https://img.shields.io/badge/Ubuntu-E95420?style=for-the-badge&logo=ubuntu&logoColor=white)
![Git](https://img.shields.io/badge/git-%23F05033.svg?style=for-the-badge&logo=git&logoColor=white)
![GitHub](https://img.shields.io/badge/github-%23121011.svg?style=for-the-badge&logo=github&logoColor=white)

<br />
<p align="center">
    <img src="https://i.postimg.cc/zfXm18fh/bank.png" alt="Logo" width="80">
  </a>

  <h3 align="center">DBank</h3>

  <p align="center">
    A decentralized bank that accepts deposits and withdrawals.
    <br />
      <a href="https://72obr-dyaaa-aaaag-qcp5a-cai.icp0.io/">View Live</a>
  </p>
</p>

<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary>Table of Contents</summary>
  <ol>
    <li> <a href="#about-the-project">About The Project</a> </li>
    <li> <a href="#built-with">Built With</a> </li>    
    <li> <a href="#screenshots">Screenshots</a> </li>
    <li> <a href="#getting-started">Getting Started</a> </li>
  </ol>
</details>

## About The Project

This decentralized bank was developed using the ICP (Internet Computer Protocol) and the Motoko programming language. It introduces a decentralized bank that enables users to make deposits and withdrawals while maintaining a secure, transparent ledger of transactions. The system automatically updates users' account balances and displays them. Additionally, money in this decentralized bank is compounded with an interest rate of 1%.

## Built With

The following technologies and libraries are used for the development of this website

- [ICP](https://internetcomputer.org/ecosystem)
- [Motoko](https://web3.motoko-book.dev/)

## Screenshots

<p align = "center">
  <img src="https://i.postimg.cc/5y5LJt8V/Screenshot-2023-10-20-185808.png" width="80%"/>
  <br>
  <img src="https://i.postimg.cc/h4kbzfsc/2.png" width="80%"/>
  <br>
  <img src="https://i.postimg.cc/q7v8VnJX/3.png" width="80%"/>
</p>

## Getting Started

If you want to test your project locally, you can use the following commands:

```bash
# Starts the replica, running in the background
dfx start --background

# Deploys your canisters to the replica and generates your candid interface
dfx deploy
```

Once the job completes, your application will be available at `http://localhost:4943?canisterId={asset_canister_id}`.

If you have made changes to your backend canister, you can generate a new candid interface with

```bash
npm run generate
```

at any time. This is recommended before starting the frontend development server, and will be run automatically any time you run `dfx deploy`.

If you are making frontend changes, you can start a development server with

```bash
npm start
```

Which will start a server at `http://localhost:8080`, proxying API requests to the replica at port 4943.
