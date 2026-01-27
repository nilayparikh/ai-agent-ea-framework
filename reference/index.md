---
layout: default
title: Reference Documentation
---

# Reference Documentation

Technical reference materials for the LocalM™ AiD framework.

<div class="page-meta-table">
  <div class="page-meta-item">
    <span class="page-meta-label">TYPE</span>
    <span class="page-meta-value">Technical Reference</span>
  </div>
  <div class="page-meta-item">
    <span class="page-meta-label">AUDIENCE</span>
    <span class="page-meta-value">Implementers & Architects</span>
  </div>
</div>

---

## Principle Quick Reference

### By Category

| Category                          | Code | Principles | Focus                         |
| --------------------------------- | ---- | ---------- | ----------------------------- |
| Planning & Strategy               | PS   | 4          | Strategic AI adoption         |
| Tool Selection & Integration      | TSI  | 3          | Tool evaluation & integration |
| Team Training & Adoption          | TTA  | 3          | Skills development            |
| Development & Coding              | DC   | 6          | Day-to-day AI usage           |
| Testing & Quality Control         | TQC  | 3          | Quality assurance             |
| Deployment & Maintenance          | DM   | 2          | Operational concerns          |
| Governance, Security & Compliance | GSC  | 10         | Security & governance         |

### By Maturity Level

| Level | Name       | Description                                  | Suitable For         |
| ----- | ---------- | -------------------------------------------- | -------------------- |
| L1    | Foundation | Basic governance, manual oversight           | New adopters         |
| L2    | Enhanced   | Intermediate automation, team-wide practices | Growing teams        |
| L3    | Advanced   | Advanced automation, minimal supervision     | Mature organizations |

---

## Standards Reference

### AGENTS.md Standard

Project-level instructions for AI agents defining:

- Allowed operations
- Forbidden actions
- File access patterns
- Communication protocols

**Related Principles**: DC-005, DC-006, GSC-002

### SKILL.md Standard

Modular capability definitions for AI agents:

- Skill declaration
- Input/output contracts
- Dependencies
- Usage guidelines

**Related Principles**: DC-005, TSI-002

### Model Context Protocol (MCP)

Anthropic's standard for AI-tool integration:

- Tool registration
- Context passing
- Response handling
- Security boundaries

**Related Principles**: TSI-002, TSI-003, GSC-003

### Agent-to-Agent (A2A)

Google's protocol for inter-agent communication:

- Agent discovery
- Task delegation
- Result aggregation
- Error handling

**Related Principles**: TSI-003, DC-006

---

## TOGAF Alignment

LocalM™ AiD principles follow TOGAF's architecture principle structure:

| TOGAF Component | LocalM™ AiD Implementation                       |
| --------------- | ------------------------------------------------ |
| Statement       | Clear, actionable principle statement            |
| Rationale       | 4-dimension rationale table                      |
| Implications    | What changes when applied                        |
| —               | **+ Maturity Alignment** (L1/L2/L3 requirements) |
| —               | **+ Governance** (Compliance measures)           |
| —               | **+ Related Principles** (Cross-references)      |

---

## Quick Links

- [All Principles](../principles/) - Browse all 27 principles
- [Implementation Guides](../guides/) - Practical guidance
- [Research Sources](../research) - Academic foundation
- [Appendix](../appendix/) - Supporting materials

### MCP (Model Context Protocol)

Standard for agent-to-tool communication. See [Protocol Integration](../principles/tool_selection_and_integration/protocol_integration/) principle.

### A2A (Agent-to-Agent Protocol)

Standard for multi-agent coordination. See [Protocol Integration](../principles/tool_selection_and_integration/protocol_integration/) principle.

---

## Quick Links

- [Principles Overview](../principles/)
- [Implementation Guides](../guides/)
- [Research Sources](../research)

<!--
  LocalM-AiD: Enterprise Architecture Framework for AI-Assisted Development
  
  Copyright (c) 2025 Nilay Parikh
  
  This Source Code Form is subject to the terms of the Mozilla Public
  License, v. 2.0. If a copy of the MPL was not distributed with this
  file, You can obtain one at http://mozilla.org/MPL/2.0/.
  
  Author: Nilay Parikh
  Contact: 
    - Twitter: @nilayparikh
    - LinkedIn: https://www.linkedin.com/in/niparikh/
  
  Feel free to contact for questions or queries.
-->
