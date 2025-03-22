# 🚀 Weaponized Macro Attack - Research & Demonstration

## ⚠️ Ethical Disclaimer
This project is for **educational and research purposes only**. The goal is to understand **how macro-based attacks work** to develop better **defensive measures**.  
**Do not use this in unauthorized environments.** The author is not responsible for any misuse.

---

## 🔥 Overview
This repository documents a **weaponized macro attack** using VBA, demonstrating:  
✅ Macro execution in **Microsoft Office**  
✅ **Bypassing AMSI** and **Defender evasion**  
✅ Establishing a **reverse shell** using PowerShell  
✅ **Lateral movement** techniques  
✅ **Detection & Defense** strategies

---

## 🏗️ **Lab Setup**
**Environment:**  
- Windows 10 (VM)  
- Microsoft Office (Word/Excel)  
- Kali Linux (Attacker Machine)  
- Metasploit / PowerShell Empire  

**Tools Used:**  
- VBA (Visual Basic for Applications)  
- PowerShell scripts  
- Metasploit for payload execution  

---

## 🎯 **Attack Flow**
1️⃣ **Macro Injection**  
   - Malicious VBA code embedded inside an **Excel/Word document**  
   - Trust Center settings adjusted to allow macro execution  

2️⃣ **Payload Execution**  
   - VBA code executes an **obfuscated PowerShell script**  
   - Base64 encoding could be used to evade AMSI  

3️⃣ **Reverse Shell Establishment**  
   - Attacker listens on **Netcat/Metasploit**  
   - Successful shell connection is established  

4️⃣ **Privilege Escalation & Lateral Movement**  
   - Exploit **SMB, RDP, or WinRM** to move across the network  
   - Maintain persistence with registry or scheduled tasks  

---

## 📸 **Screenshots**
| **Stage** | **Screenshot** |
|-----------|--------------|
| Defender Blocking | ![Defender Blocking](./screenshots/defender_blocking.png) |
| Reverse Shell Connection | ![Reverse Shell](./screenshots/rev_shell_connect.png) |
| Macro Execution | ![Macro Code](./screenshots/VBA_code_editor.png) |
| AMSI Bypass | ![AMSI Bypass](./screenshots/VBA_code_with_amsi_bypass.png) |

---

## 🛡️ **Defensive Measures**
✅ **Disable Macros by Default** in Microsoft Office  
✅ **Use AMSI & Defender with Real-time Protection**  
✅ **Application Whitelisting (AppLocker, WDAC)** to prevent unauthorized scripts  
✅ **SIEM Monitoring** for abnormal PowerShell execution  
✅ **Network Segmentation** to limit lateral movement  



