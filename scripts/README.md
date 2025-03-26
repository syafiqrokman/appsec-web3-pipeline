# Scripts for Local Development Scans

This directory contains helper scripts to perform security scans on the codebase and smart contracts. These are typically used during local development or can be integrated into CI pipelines.

---

## 🔧 Installation

Before running the scripts, make sure the following tools are installed:

### 1. **Slither** – Static analysis for Solidity smart contracts
```bash
pip install slither-analyzer
```
Requires Python 3.6+. You may also need `solc` installed:
```bash
brew install solidity        # macOS
sudo apt install solc        # Ubuntu / intel-based Mac
```

### 2. **TruffleHog** – Secrets scanner for Git and filesystem
```bash
pip install trufflehog
```
Alternatively, you can use the CLI via Docker:
```bash
docker run -it --rm trufflesecurity/trufflehog:latest --help
```

### 3. **Optional: Semgrep** – For customizable SAST on backend code
```bash
pip install semgrep
```
Example scan:
```bash
semgrep --config auto .
```

---

## ▶️ Running the Scripts

### Slither (Solidity static analysis)
```bash
./run-slither.sh`
```

### TruffleHog (secrets scan)
```bash
./run-trufflehog.sh
```

## 🧠 Notes

- Make sure your working directory is at the root of the repo before running these.
- You can customize each script with additional flags or output formats.
- These tools can also be hooked into GitHub Actions, Azure Pipelines, or any CI/CD platform.
