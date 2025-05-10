# implementation-of-AES-on-FPGA
# AES-128 Encryption Implementation in VHDL

## 🔐 Project Description

This project is a full hardware implementation of the **AES-128 (Advanced Encryption Standard)** encryption algorithm using **VHDL**. It is intended for FPGA or ASIC-based secure communication systems that require fast and reliable data encryption at the hardware level.

The design follows the official AES specification (FIPS-197) and includes all the main steps:
- **SubBytes**
- **ShiftRows**
- **MixColumns**
- **AddRoundKey**
- **Key Expansion (predefined keys)**

All modules are controlled by a **finite state machine (FSM)** that manages the AES rounds and coordinates the flow between different transformations.

## 🎯 Objectives

- Understand and implement the AES algorithm using hardware description languages.
- Build a modular and reusable AES encryption core.
- Simulate and verify correct operation using ModelSim.

## 🧩 Components

- `aes.vhd`: Top-level module with FSM control logic and integration of all AES operations.
- `subox.vhd`: Implements the SubBytes transformation using S-Boxes.
- `shift_rows.vhd`: Rearranges the bytes according to AES rules.
- `mixcolumn.vhd`: Applies the MixColumns matrix transformation.
- `addkey.vhd`: Performs the XOR with the round key.
- `aes_tb.vhd`: Testbench to verify the operation using input plaintext and observing the ciphertext.

## 🛠️ How It Works

1. The **FSM** initializes the encryption with a `start` signal.
2. It proceeds through 10 AES rounds, each composed of:
   - SubBytes → ShiftRows → MixColumns → AddRoundKey.
3. The last round omits the MixColumns step, as per the AES standard.
4. Keys for each round are predefined and hardcoded in the design for simplicity.
5. The final ciphertext is output after all rounds are completed.

## 📌 Simulation Instructions

To simulate the design in ModelSim:

```bash
vcom subox.vhd
vcom shift_rows.vhd
vcom mixcolumn.vhd
vcom addkey.vhd
vcom aes.vhd
vcom aes_tb.vhd
vsim work.aes_tb
add wave *
run 2000 ns
