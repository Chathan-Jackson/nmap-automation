# Sample Lab Results

## Authorized Lab Test

The Nmap automation workflow was tested in an academic lab environment as part of Network Defense & Security coursework.

### Test Command

`./automated_nmap.sh 10.0.2.15 80,443,22,3389`

### Target

- Lab IP: `10.0.2.15`
- Ports tested: `80, 443, 22, 3389`

### Observed Results

The documented scan did not identify open ports on the selected target.

As a result:

- No service/version information was returned.
- An operating system fingerprint was not returned.
- The automation workflow still completed the scanning and reporting process.

## What I Learned

This project reinforced that security testing does not always produce vulnerabilities or open services. Effective network reconnaissance requires interpreting the results returned by the target rather than assuming that exposed services will be present.

The project also demonstrated how Bash scripting can make repetitive security tasks more consistent and efficient.

## Ethical Use

All scanning associated with this project was performed in an authorized academic lab environment. Network scanning should only be performed against systems you own or have explicit permission to test.
