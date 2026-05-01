# Security Policy

## Reporting a vulnerability

**Please do not open a public GitHub issue for security-sensitive findings.**

This repository has [GitHub Private Vulnerability Reporting](https://docs.github.com/en/code-security/security-advisories/guidance-on-reporting-and-writing-information-about-vulnerabilities/privately-reporting-a-security-vulnerability)
enabled. To report a vulnerability:

1. Go to the [Security tab](https://github.com/Klazomenai/chart-house/security)
2. Click **Report a vulnerability**
3. Fill in the advisory form

You will receive an acknowledgement within **5 working days**. We aim to
triage, confirm, and respond with a remediation plan within **14 working days**.

## Scope

This policy covers the **chart-house** repository and the static site it
produces. It does not cover:

- Issues in [Bridge](https://github.com/Klazomenai/bridge) — see that repo's
  own security policy.
- Issues in [DeckChat](https://github.com/Klazomenai/deck-chat) — see that
  repo's own security policy.
- Issues in upstream dependencies (Zola, Nix, GitHub Actions ecosystem) —
  please report to the upstream maintainers; we are happy to coordinate
  disclosure if a fix here would help.

## In scope

- Cross-site scripting (XSS) in rendered content or templates
- Subresource integrity / content injection on the published site
- CI/CD supply-chain risks specific to this repo's workflows
- Secret exposure in the repository or its build artefacts

## Out of scope

- Findings that require a compromised maintainer account or stolen GitHub
  PAT
- Denial-of-service against GitHub Pages (controlled by GitHub)
- Vulnerabilities in third-party services we link to
- Reports from automated scanners with no demonstrated exploit path

## Safe harbour

We will not pursue legal action against good-faith security researchers
who follow this policy and refrain from data exfiltration, service
disruption, or affecting others' confidentiality.

Thank you for keeping the fleet safe.
