# oss-audit-24BAI10133

**Student Name:** Om Pramod Kumbhar  
**Registration Number:** 24BAI10133  
**Course:** Open Source Software (OSS NGMC)  
**Chosen Software:** Python  

---

## Scripts Overview

| Script | Name | Description |
|--------|------|-------------|
| script1.sh | System Identity Report | Displays Linux distro, kernel version, current user, uptime, date, and OS license |
| script2.sh | FOSS Package Inspector | Checks if Python 3 is installed, retrieves version and description, prints a philosophy note via case statement |
| script3.sh | Disk and Permission Auditor | Loops through key system directories and reports permissions, ownership, and disk usage. Also checks Python config directory |
| script4.sh | Log File Analyzer | Reads a log file line by line, counts keyword matches, and prints the last 5 matching lines |
| script5.sh | Open Source Manifesto Generator | Asks 3 interactive questions and generates a personalised open-source manifesto saved to a .txt file |

---

## How to Run Each Script on Linux

### Prerequisites
- Ubuntu or any Debian-based Linux system
- Python 3 installed: `sudo apt install python3`
- Bash shell (default on all Linux systems)

### Steps

**1. Clone the repository**
```bash
git clone https://github.com/<your-username>/oss-audit-24BAI10133.git
cd oss-audit-24BAI10133
```

**2. Make all scripts executable**
```bash
chmod +x script1.sh script2.sh script3.sh script4.sh script5.sh
```

**3. Run Script 1 — System Identity Report**
```bash
./script1.sh
```

**4. Run Script 2 — FOSS Package Inspector**
```bash
./script2.sh
```

**5. Run Script 3 — Disk and Permission Auditor**
```bash
./script3.sh
```

**6. Run Script 4 — Log File Analyzer**
```bash
./script4.sh /var/log/dpkg.log install
```
> Usage: `./script4.sh <logfile_path> <keyword>`

**7. Run Script 5 — Open Source Manifesto Generator**
```bash
./script5.sh
```
> This script is interactive — it will ask you 3 questions and save your manifesto to `manifesto_<username>.txt`

---

## Dependencies

- `bash` — available by default on all Linux systems
- `python3` — install with `sudo apt install python3`
- `dpkg` — available by default on Debian/Ubuntu
- `lsb_release` — install with `sudo apt install lsb-release` if missing
- `systemd` — available by default on Ubuntu 24.04
