# Circuit

## Tools Used
For this project, we will utilize the `hardhat-circom` template. This tool facilitates the writing, compiling, and proof generation of Circom circuits, as well as the creation of a verifier contract. It is highly recommended for efficient circuit design and development.

## Project Rubric
To successfully complete the Final Challenge, ensure that your project meets the following criteria:

1. **Write a Correct `circuit.circom` Implementation:**
   - Develop a circuit using Circom that correctly implements the desired logic.
   
2. **Compile the Circuit:**
   - Use `hardhat-circom` to compile the circuit and generate the necessary circuit intermediaries (e.g., R1CS, WASM, and zkey files).
   
3. **Generate a Proof:**
   - Using the compiled circuit and appropriate inputs, generate a proof.
   - Specifically, use inputs `A=0` and `B=1` to generate this proof.
   
4. **Deploy a Solidity Verifier:**
   - Deploy the generated Solidity verifier contract to a test network.
   - You can deploy to either the Sepolia or Mumbai Testnet.
   
5. **Verify the Proof:**
   - Call the `verifyProof()` method on the deployed verifier contract.
   - Assert that the output of `verifyProof()` is `true`, indicating the proof is valid.

Following these steps will ensure that your project meets the requirements of the Final Challenge. Good luck, and happy coding!
