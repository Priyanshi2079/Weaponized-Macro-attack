# Encoding VBA Payload in Base64

Base64 encoding is used to obfuscate the PowerShell payload and evade detection mechanisms. Since PowerShell can execute commands in an encoded format, we can convert our reverse shell script into Base64 and run it silently.

## **Steps to Encode the Script:**
1. Write your PowerShell script as a `.ps1` file.
2. Use the following command in a PowerShell terminal to encode it:
   ```powershell
   $command = Get-Content -Path reverse_shell.ps1 | Out-String
   $bytes = [System.Text.Encoding]::Unicode.GetBytes($command)
   $encoded = [Convert]::ToBase64String($bytes)
   Write-Output $encoded
   ```
3. Copy the output and use it within your VBA macro as part of the `-enc` parameter.

## **Benefits of Encoding in Base64**
- **Evasion of Basic Detection:** Security tools that scan plain-text scripts may not immediately recognize Base64-encoded commands as malicious.
- **Preservation of Script Integrity:** Base64 ensures that special characters, spaces, or formatting issues do not interfere with command execution.
- **Simplified Execution:** PowerShell can decode and execute Base64 commands directly, reducing errors related to escaping special characters.
- **Bypassing String-Based Filters:** Many security tools rely on keyword matching to detect malicious scripts. Base64 encoding helps evade such filters.
- **Easy Transmission:** Encoded scripts can be embedded in different formats, such as registry entries, emails, or documents, without modification.

# **Disclaimer**
This guide is strictly for educational and research purposes. Unauthorized use of these techniques is illegal and unethical. Always test in a controlled environment and with permission.
