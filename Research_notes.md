Overview

This project demonstrates how a malicious macro can be weaponized within a Microsoft Office document to execute arbitrary code on a target system. The attack leverages Visual Basic for Applications (VBA) macros to run PowerShell commands, potentially leading to a reverse shell connection. However, for ethical and educational purposes, the provided code has been sanitized to ensure safety.

Attack Workflow

1.Enabling Macros: The target must enable macros in Microsoft Office for the attack to succeed.

2.Auto-Execution: The malicious code executes automatically using AutoOpen or Document_Open events.

3.Payload Execution: A PowerShell command is executed to establish a connection with the attacker's system (removed for safety in this repository).

4.Remote Control: Once connected, the attacker can execute system commands remotely (excluded in this project for ethical reasons).


Key Components

1.VBA Macros: Used to execute commands.

2.PowerShell: Typically used to download and execute further payloads.

3.Obfuscation Techniques: Attackers may encode payloads to evade detection.


Ethical Considerations

This project is intended strictly for educational and research purposes. Any unauthorized use of these techniques is illegal and unethical.
