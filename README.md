
# Application Security Automation for Web3 Projects

## 💬 Intro

This repo represents how I think and work as a security engineer.  
I will integrate security tooling and automation into both off-chain (Java backend etc.) and on-chain (Solidity smart contracts) components.
It reflects the kind of shift-left DevSecOps practices and real-time issue detection I would advocate for within Binance or other Web3 organizations.

## 🔐 Objectives

- Provide a ready-to-use security pipeline for internal application teams.
- Showcase static and dynamic tooling integrations across traditional web2 and blockchain systems.
- Enforce security earlier in the software development lifecycle (Secure SDLC / Shift-left)

---

## 📁 Project Structure

```
appsec-web3-pipeline/
├── backend/          # Java Spring Boot backend with sample pipeline and Docker
├── contracts/        # Sample smart contract to demonstrate Web3 security tools
├── scripts/          # CLI tools for running scans like Slither and TruffleHog
```

---

## 🧪 Security Tooling Highlights

### ✅ Backend (Off-Chain Server in Java)
- Integrates CI/CD security checks (e.g., secrets detection, code linting)
- Configured for Azure Pipelines and Docker
- Can easily extend with tools like SonarQube, Semgrep, or Snyk

### ✅ Contracts (On-Chain Contracts in Solidity)
- `ExampleVault.sol`: intentionally contains a reentrancy vulnerability
- `run-slither.sh`: static analysis using [Slither](https://github.com/crytic/slither)
- Ready for integration with Mythril, Foundry, or Echidna

---

## 🔁 Scripts

- `scripts/run-slither.sh` – Run static analysis on Solidity contracts
- `scripts/run-trufflehog.sh` – Scan repo for secrets or hardcoded keys

---

## 🧠 Why This Project?

I built this to demonstrate how as an AppSec Engineer I can:

- Integrate and maintain security tooling across multi-stack systems
- Help internal application teams enforce secure development practices
- Extend DevSecOps coverage into Web3/DeFi environments
- Contribute hands-on to secure architecture and automation pipelines

---
