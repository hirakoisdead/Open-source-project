# Open Source Software : Shell Script Tasks

**Author:** Tanish Kumar Kar - 24BCY10013
**Course:** Open Source Software

---

## Overview

This project contains five Bash shell scripts written as part of the Open Source Audit assignment. Each script demonstrates core Linux shell scripting concepts and must be run on a real Linux system.

---

## Scripts

### Script 1 : System Identity Report
**File:** `script1_system_identity.sh`  
**Topics:** Unit 1 & 2

Displays a welcome screen with key system information including the Linux distribution name, kernel version, current user, home directory, system uptime, date/time, and the open-source license covering the OS.

**Concepts used:** variables, `echo`, command substitution `$()`, basic output formatting

**How to run:**
```bash
./script1_system_identity.sh
```

---

### Script 2 : FOSS Package Inspector
**File:** `script2_package_inspector.sh`  
**Topics:** Unit 2

Checks whether a chosen open-source package is installed, shows its version, and prints a short philosophy note about the package using a case statement.

**Concepts used:** `if-then-else`, `case` statement, `dpkg`, pipe with `grep`

**How to run:**
```bash
./script2_package_inspector.sh
```
> Note: Change the `PACKAGE` variable inside the script to check a different package.

---

### Script 3 : Disk and Permission Auditor
**File:** `script3_disk_permission_auditor.sh`  
**Topics:** Unit 2

Loops through a list of important system directories and reports the permissions, owner, and disk usage of each. Also checks if the chosen software's config directory exists.

**Concepts used:** `for` loop, `ls -ld`, `du`, `awk`, `cut`

**How to run:**
```bash
./script3_disk_permission_auditor.sh
```

---

### Script 4 : Log File Analyzer
**File:** `script4_log_analyzer.sh`  
**Topics:** Units 2 & 5

Reads a log file line by line, counts how many lines contain a given keyword, retries if the file is empty, and prints the last 5 matching lines.

**Concepts used:** `while read` loop, `if-then`, counter variables, command-line arguments (`$1`, `$2`)

**How to run:**
```bash
./script4_log_analyzer.sh /var/log/syslog error
```
| Argument | Description | Required |
|----------|-------------|----------|
| `$1` | Path to the log file | Yes |
| `$2` | Keyword to search for (default: `error`) | No |

---

### Script 5 : Open Source Manifesto Generator
**File:** `script5_manifesto_generator.sh`  
**Topics:** Unit 5

Asks the user three interactive questions and composes a personalised open-source philosophy statement, then saves it to a `.txt` file.

**Concepts used:** `read` for user input, string concatenation, writing to a file with `>` and `>>`, `date` command, aliases (demonstrated via comment)

**How to run:**
```bash
./script5_manifesto_generator.sh
```
> The output file will be named `manifesto_<username>.txt`

---

## Setup & Execution

### Prerequisites
- A Linux system (Ubuntu, Fedora, CentOS, etc.) or WSL on Windows
- Bash shell

### Steps
```bash
# 1. Make all scripts executable
chmod +x script*.sh

# 2. Run any script
./script1_system_identity.sh
./script2_package_inspector.sh
./script3_disk_permission_auditor.sh
./script4_log_analyzer.sh /var/log/syslog error
./script5_manifesto_generator.sh
```

### Running on Windows (via WSL)
```bash
# Open PowerShell and type:
wsl

# Navigate to the project folder
cd /mnt/d/Open\ source\ project/

# Make scripts executable and run
chmod +x script*.sh
./script1_system_identity.sh
```

---

## Shell Scripting Concepts Summary

| Concept | Used In |
|---------|---------|
| Variables & `echo` | Script 1, 2, 3, 4, 5 |
| Command substitution `$()` | Script 1 |
| `if-then-else` | Script 2, 3, 4 |
| `case` statement | Script 2 |
| `for` loop | Script 3 |
| `while read` loop | Script 4 |
| `grep`, `awk`, `cut` | Script 2, 3, 4 |
| Command-line arguments `$1` | Script 4 |
| `read` for user input | Script 5 |
| File redirection `>` `>>` | Script 5 |
| `date`, `whoami`, `uname` | Script 1, 5 |
