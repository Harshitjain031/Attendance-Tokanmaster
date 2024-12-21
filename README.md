# AttendanceToken

## Project Title
**AttendanceToken**

## Project Description
**AttendanceToken** is a decentralized token system built on the Ethereum blockchain. It is designed to reward students with tokens for their class attendance. The contract allows the owner to register students, track their attendance for specific classes, and reward them with tokens. This system can be useful in educational institutions, online courses, or any environment where attendance is tracked and rewarded.

## Contract Address
0xF637f6EAF7d98778A731fb743586BE9dcA0316FE
![image](https://github.com/user-attachments/assets/df6ef34e-07c6-4b53-b1f6-e82adb1fb951)


## Project Vision
The vision of the **AttendanceToken** project is to provide a transparent and automated way to reward students for their participation and attendance in classes using blockchain technology. By using smart contracts and tokens, the system ensures fair and immutable tracking of attendance. The goal is to create a more efficient and engaging system where students are incentivized for regular attendance and participation, leveraging blockchain's trustless and secure properties.

## Key Features
- **Token-Based Rewards**: Students are rewarded with the "AttendanceToken" (ATD) for attending classes. Each class attended earns a fixed amount of tokens (10 ATD tokens per class).
- **Owner-Controlled Management**: The contract owner (typically a teacher or administrator) can add or remove students, ensuring that only valid participants receive rewards.
- **Attendance Tracking**: The system tracks attendance on a per-class basis, ensuring that students cannot be rewarded multiple times for attending the same class.
- **Transparent and Secure**: By using the Ethereum blockchain, the attendance records and rewards are stored securely and transparently, reducing the risk of fraud.
- **Simple Token System**: The token is an ERC-20-style token (though it does not implement all ERC-20 features), and is used purely for rewarding attendance. It could be extended for more functionality if needed.

---

### Future Improvements

- **Minting and Burning Tokens**: The contract could be extended to allow minting and burning of tokens to ensure the supply can grow and shrink based on demand.
- **Full ERC-20 Support**: Implementing all ERC-20 functions (e.g., `transfer`, `approve`, `transferFrom`) to make the token compatible with decentralized exchanges and wallets.
- **Automated Attendance Verification**: Integrating with external systems for automatic attendance tracking (e.g., QR code scanning, student app verification).

---
