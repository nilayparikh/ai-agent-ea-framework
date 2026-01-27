# Contributing to LocalM AiD Framework

First off, thank you for considering contributing to the LocalM AiD Enterprise Architecture Framework! 🎉

This document provides guidelines and best practices for contributing to this project.

## Table of Contents

- [Code of Conduct](#code-of-conduct)
- [How Can I Contribute?](#how-can-i-contribute)
- [Getting Started](#getting-started)
- [Contribution Guidelines](#contribution-guidelines)
- [Style Guide](#style-guide)
- [License](#license)

## Code of Conduct

This project and everyone participating in it is governed by our [Code of Conduct](CODE_OF_CONDUCT.md). By participating, you are expected to uphold this code. Please report unacceptable behavior to nilayparikh@gmail.com.

## How Can I Contribute?

### Reporting Bugs

Before creating bug reports, please check existing issues to avoid duplicates. When creating a bug report, include as many details as possible:

- **Use a clear and descriptive title**
- **Describe the exact steps to reproduce the problem**
- **Describe the behavior you observed**
- **Explain the expected behavior**
- **Include any relevant context**

### Suggesting Enhancements

Enhancement suggestions are tracked as GitHub issues. When creating an enhancement suggestion:

- **Use a clear and descriptive title**
- **Provide a detailed description of the suggested enhancement**
- **Explain why this enhancement would be useful**
- **Specify which principle category it relates to** (PS, TSI, TTA, DC, TQC, DM, GSC)

### Contributing Principles

The LocalM AiD framework consists of Enterprise Architecture principles. When contributing new principles or modifications:

1. **Follow TOGAF Structure**: All principles must include:
   - Statement (clear, actionable)
   - Rationale (4-dimension table)
   - Implications (visual diagram + table)
   - Maturity Alignment (L1/L2/L3)
   - Governance (compliance measures + exceptions)
   - Related Principles (cross-references)

2. **Align with Core Tenets**:
   - Human Agency
   - Structured Interaction
   - Continuous Validation
   - Traceability
   - Progressive Maturity

3. **Use Mermaid Diagrams**: All visual representations must use Mermaid syntax, not ASCII art.

### Pull Requests

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-principle`)
3. Ensure your files include the MPL 2.0 header (see `.eaf_header.txt`)
4. Commit your changes (`git commit -m 'Add: PS-005 Amazing New Principle'`)
5. Push to the branch (`git push origin feature/amazing-principle`)
6. Open a Pull Request

## Getting Started

### Prerequisites

- Git
- A text editor with Markdown support
- (Optional) Jekyll for local preview

### Local Development

```bash
# Clone the repository
git clone https://github.com/nilayparikh/ai-agent-ea-framework.git
cd ai-agent-ea-framework

# Install Jekyll dependencies (optional, for preview)
bundle install

# Run local server
bundle exec jekyll serve
```

### File Structure

```
framework/
├── _config.yml           # Jekyll configuration
├── index.md              # Landing page
├── principles/           # EA Principles by category
│   ├── index.md
│   ├── planning_and_strategy/
│   ├── tool_selection_and_integration/
│   ├── team_training_and_adoption/
│   ├── development_and_coding/
│   ├── testing_and_quality_control/
│   ├── deployment_and_maintenance/
│   └── governance_security_and_compliance/
├── guides/               # Implementation guides
├── reference/            # Reference documentation
└── appendix/             # Supporting materials
```

## Contribution Guidelines

### Principle Naming Convention

- Use category code + sequential number: `PS-001`, `TSI-002`, etc.
- Use descriptive, action-oriented names
- Keep names concise (3-7 words)

### File Naming

- Use `snake_case` for folders: `planning_and_strategy/`
- Use numbered prefix for content: `01_principle_name.md`
- Use `PascalCase` for standard files: `README.md`, `CONTRIBUTING.md`

### Commit Messages

Use conventional commits format:

- `Add:` for new content
- `Update:` for modifications
- `Fix:` for corrections
- `Docs:` for documentation changes
- `Style:` for formatting changes

Examples:

```
Add: DC-005 Agent Configuration Governance principle
Update: PS-001 rationale with new research citations
Fix: Broken cross-reference in TQC-002
Docs: Improve contribution guidelines
```

### Header Requirements

All Markdown files must include the MPL 2.0 header comment. Use the template from `.eaf_header.txt`:

```html
<!--
  LocalM AiD: Enterprise Architecture Framework for AI-Assisted Development
  
  Copyright (c) 2025 Nilay Parikh
  
  This Source Code Form is subject to the terms of the Mozilla Public
  License, v. 2.0. If a copy of the MPL was not distributed with this
  file, You can obtain one at http://mozilla.org/MPL/2.0/.
  
  Author: Nilay Parikh
  Contact: 
    - Email: nilayparikh@gmail.com
    - Twitter: @nilayparikh
    - LinkedIn: https://www.linkedin.com/in/niparikh/
  
  Feel free to contact on Twitter/LinkedIn for questions or queries.
-->
```

## Style Guide

### Markdown

- Use ATX-style headers (`#`, `##`, `###`)
- Use fenced code blocks with language identifiers
- Use Mermaid for diagrams (```mermaid)
- Use tables for structured data
- Keep line length reasonable (soft wrap at ~100 chars)

### Diagrams

- Use `flowchart TB` for hierarchical structures
- Use `flowchart LR` for process flows
- Use subgraphs to group related elements
- Include styling for visual clarity

### Tables

- Use consistent column alignment
- Include header row separator
- Keep content concise

## License

By contributing to LocalM AiD Framework, you agree that your contributions will be licensed under the Mozilla Public License 2.0.

---

## Questions?

Feel free to contact on Twitter/LinkedIn for questions or queries:

- **Twitter**: [@nilayparikh](https://twitter.com/nilayparikh)
- **LinkedIn**: [Nilay Parikh](https://www.linkedin.com/in/niparikh/)
- **Email**: nilayparikh@gmail.com

Thank you for helping make AI-assisted development more structured and governed! 🚀
