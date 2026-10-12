# Nmap Automation & HTML Reporting

## Overview
This project demonstrates the use of Bash scripting and Nmap to automate network reconnaissance and generate structured scan reports in a Kali Linux environment.

The goal was to create a repeatable process that accepts a target IP address and optional ports, performs an Nmap scan, saves the results in XML format, converts the results into an HTML report, and opens the completed report for review.

## Tools & Technologies
- Kali Linux
- Nmap
- Bash
- XML
- HTML
- Firefox
- Virtual Machine Lab Environment

## Project Objectives
- Understand and apply Nmap scanning techniques
- Automate network scanning using Bash
- Perform service and operating system detection
- Generate readable HTML reports from scan results
- Develop practical network reconnaissance and scripting skills

## How It Works
The Bash script:
1. Accepts a target IP address and optional list of ports
2. Runs an automated Nmap scan
3. Performs service and operating system detection
4. Saves scan results as an XML file
5. Converts the XML output into an HTML report
6. Opens the completed report in Firefox

Example:

./automated_nmap.sh <target_IP> 80,443,22,3389

Portfolio Note: The original Bash script used for this academic project was not retained. The script included in this repository is a reconstructed portfolio version based on the workflow and functionality documented in the original project presentation.

## Lab Results
During the project, the script was tested against a target in an authorized lab environment. The scan successfully completed the automated workflow and generated the required report.

The selected target did not return open ports, service/version information, or an operating system fingerprint during the documented scan. This demonstrated an important part of security analysis: scan results must be interpreted based on the actual target response rather than assuming vulnerabilities or exposed services will be present.

## Skills Demonstrated
- Network reconnaissance
- Nmap
- Bash scripting
- Security automation
- Linux command line
- XML and HTML reporting
- Technical troubleshooting
- Security documentation

## Security & Ethical Use
This project was completed in an academic and authorized lab environment as part of Network Defense & Security coursework. The techniques demonstrated here should only be used on systems for which you have explicit authorization to test.

## Author
**Chathan Jackson**  
B.S. Information Systems — Cybersecurity Concentration  
University of Alabama in Huntsville

[LinkedIn](https://www.linkedin.com/in/chathan-jackson-86864a382/)
