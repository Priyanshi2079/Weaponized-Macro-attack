# MacrosExploitation_ReverseShell
This project explores macro exploitation in penetration testing, demonstrating how malicious VBA macros can execute arbitrary code on a target system. By leveraging PowerShell commands, the attack can establish a reverse shell connection, highlighting the risks associated with macro-based threats. Designed strictly for educational and ethical hacking research.

## Included Files
- [**lab_setup.md**](lab_setup.md) - Guide to setting up the environment for testing the macro-based attack.
- [**Research_notes.md**](Research_notes.md) - Explanation of how the macro executes the payload and the technical details behind it.

- [**encodePayload.md**](encodePlayload.md) - Discusses Base64 encoding, AMSI, and bypassing real-time protection.
# Reverse Shell via Malicious VBA Macros

## Features
- **Automated Execution:** The script triggers upon document open.
- **PowerShell Payload Execution:** The macro runs a PowerShell command to establish a reverse shell connection.
- **Obfuscation Techniques:** Optionally, Base64 encoding can be used to bypass basic security filters.

## Setup Instructions
1. Clone this repository to your local machine.
2. Open the `.bas` file in a VBA editor within Microsoft Office.
3. Modify the **ATTACKER_IP** and **PORT** values to match your listener setup.
4. Save and execute the macro-enabled document.
5. Start a Netcat listener on your attack machine:
   ```bash
   nc -lvnp <PORT>
   ```
6. Wait for the reverse shell connection.

## Security Considerations
- This project is intended for **educational and research purposes only**.
- Unauthorized use of this technique is illegal and unethical.
- Always test in an isolated environment with explicit permission.

## Bonus: Base64 Encoding (Optional)
For evading basic detection mechanisms, the PowerShell payload can be encoded in Base64. However, this step is not required for the project’s functionality. The encoded payload can help bypass certain security filters but should be used strictly for research purposes.

## Disclaimer
This project is for educational purposes only. Unauthorized use of these techniques is illegal and unethical. Always use these methods in a controlled environment and with proper authorization.

