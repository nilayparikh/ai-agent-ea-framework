---
layout: default
title: Governance, Security & Compliance Principles
category: GSC
---

# Governance, Security & Compliance (GSC) Principles

**Status**: 🔍 Under Peer Review

**Category Code**: GSC
**Principle Count**: 7
**Focus**: AI Tool Permissions, Sandboxing, Access Controls, and Compliance

---

## Category Overview

```mermaid
flowchart TB
    subgraph AIAgent["AI Agent (Claude Code, Copilot, Cursor, Aider, etc.)"]
        Agent["AI Agent"]
    end

    subgraph PermBoundary["Permission Boundary (GSC-002)"]
        Perm["What AI can access"]
    end

    Agent --> Perm

    subgraph Resources["Controlled Resources"]
        direction LR
        Files["Files<br/>GSC-003"]
        Terminal["Terminal<br/>GSC-003"]
        Git["Git<br/>GSC-004"]
        Network["Network<br/>GSC-003"]
        Data["Data<br/>GSC-005"]
    end

    Perm --> Files
    Perm --> Terminal
    Perm --> Git
    Perm --> Network
    Perm --> Data
```

**GSC Principles:**

| ID      | Principle              | Focus                        |
| ------- | ---------------------- | ---------------------------- |
| GSC-001 | Governance Framework   | Accountability & oversight   |
| GSC-002 | Permission Boundaries  | AI access limits             |
| GSC-003 | Sandboxing & Isolation | Execution environment        |
| GSC-004 | Git Access Controls    | Version control restrictions |
| GSC-005 | Data Classification    | Data exposure controls       |
| GSC-006 | Audit & Traceability   | Logging and compliance       |
| GSC-007 | Responsible AI Ops     | Ethical operations           |

---

## Principles in This Category

| ID      | Principle Name                        | Statement Summary                 |
| ------- | ------------------------------------- | --------------------------------- |
| GSC-001 | [Governance Framework](#gsc-001)      | Accountability and oversight      |
| GSC-002 | [Permission Boundaries](#gsc-002)     | Define AI agent access limits     |
| GSC-003 | [Sandboxing & Isolation](#gsc-003)    | Isolate AI execution environments |
| GSC-004 | [Git Access Controls](#gsc-004)       | Restrict AI git operations        |
| GSC-005 | [Data Classification](#gsc-005)       | Control data exposure to AI       |
| GSC-006 | [Audit & Traceability](#gsc-006)      | Maintain AI activity audit trails |
| GSC-007 | [Responsible AI Operations](#gsc-007) | Ethical AI tool usage             |

---

<a name="gsc-001"></a>

## GSC-001: Governance Framework

### Statement

> **Establish clear accountability structures where humans remain responsible for all AI tool operations, with documented ownership chains and approval requirements.**

### Rationale

| Dimension                | Justification                                                       |
| ------------------------ | ------------------------------------------------------------------- |
| **Business Value**       | Clear accountability reduces risk and enables confident AI adoption |
| **Technical Foundation** | Structured governance enables safe scaling of AI tool capabilities  |
| **Risk Mitigation**      | Defined ownership prevents gaps in responsibility for AI operations |
| **Human Agency**         | Humans remain in control; AI tools operate under human supervision  |

### Implications

```mermaid
flowchart TB
    Board["AI Governance Board<br/><i>Policy, standards, oversight</i>"]

    Board --> Tool["Tool Approval<br/>• Evaluate<br/>• Approve<br/>• Retire"]
    Board --> Security["Security Controls<br/>• Sandboxing<br/>• Permissions<br/>• Git access"]
    Board --> Compliance["Compliance Controls<br/>• Audit logs<br/>• Data class<br/>• Reporting"]
```

| Area        | Implication                                        |
| ----------- | -------------------------------------------------- |
| Development | All AI tool usage attributed and governed          |
| Governance  | AI governance board or equivalent established      |
| Skills      | Governance training for all AI tool users          |
| Tools       | Tooling supports governance workflows and tracking |

### Maturity Alignment

| Level           | Requirements                                      |
| --------------- | ------------------------------------------------- |
| **Base (L1)**   | Manual governance; documented AI tool policies    |
| **Medium (L2)** | Automated tracking; defined approval workflows    |
| **High (L3)**   | Integrated governance; predictive risk management |

### Governance

#### Compliance Measures

- [ ] AI governance board established
- [ ] AI tool policies documented
- [ ] Approval workflows defined
- [ ] Exception process established
- [ ] Governance training completed

#### Exception Process

| Condition            | Approval Required | Documentation       |
| -------------------- | ----------------- | ------------------- |
| New AI tool adoption | Governance Board  | Risk assessment     |
| Policy exception     | Director          | Exception rationale |
| Emergency tool usage | Manager           | Post-hoc review     |

### Related Principles

- **GSC-002**: Permission Boundaries (governance defines permissions)
- **GSC-006**: Audit & Traceability (governance requires auditability)
- **TSI-001**: Evaluation Framework (governance drives evaluation)

---

<a name="gsc-002"></a>

## GSC-002: Permission Boundaries

### Statement

> **Define explicit permission boundaries for AI agents, limiting access to file systems, terminals, networks, and sensitive resources based on operational requirements.**

### Rationale

| Dimension                | Justification                                                        |
| ------------------------ | -------------------------------------------------------------------- |
| **Business Value**       | Controlled permissions prevent unintended consequences and data loss |
| **Technical Foundation** | Explicit boundaries enable safe AI tool operation                    |
| **Risk Mitigation**      | Limited permissions reduce blast radius of AI errors                 |
| **Human Agency**         | Humans define boundaries; AI operates within them                    |

### Implications

#### Permission Matrix

| Permission Type         | Restriction    | Rationale              |
| ----------------------- | -------------- | ---------------------- |
| File System Read        | Workspace only | Limit context exposure |
| File System Write       | Workspace only | Prevent system damage  |
| Terminal Read           | Allowed        | Needed for feedback    |
| Terminal Execute        | Approval req.  | Commands have effects  |
| Git Read                | Allowed        | Needed for context     |
| Git Write (feature)     | Allowed        | Normal development     |
| Git Write (main/master) | **NEVER**      | Protected branches     |
| Git Merge               | **NEVER**      | Human-only operation   |
| Network Outbound        | Filtered       | Prevent exfiltration   |
| Network Inbound         | Blocked        | No external access     |
| Secrets/Credentials     | **NEVER**      | Security requirement   |
| Production Systems      | **NEVER**      | Safety requirement     |

#### Tool-Specific Permissions

| Tool           | Default Mode | Agent Mode                 |
| -------------- | ------------ | -------------------------- |
| GitHub Copilot | Suggestions  | PR creation (no merge)     |
| Claude Code    | Ask mode     | Auto-edit (with approval)  |
| Cursor         | Normal       | Agent (file + terminal)    |
| Aider          | --yes=false  | Auto-commit (feature only) |

| Area        | Implication                                           |
| ----------- | ----------------------------------------------------- |
| Development | Configure AI tools with minimal necessary permissions |
| Governance  | Permission policies documented and enforced           |
| Skills      | Train developers on permission configuration          |
| Tools       | Use tools that support permission controls            |

### Maturity Alignment

| Level           | Requirements                                             |
| --------------- | -------------------------------------------------------- |
| **Base (L1)**   | Manual permission configuration; documented policies     |
| **Medium (L2)** | Centralized permission management; automated enforcement |
| **High (L3)**   | Dynamic permission adjustment; context-aware controls    |

### Governance

#### Compliance Measures

- [ ] Permission matrix documented for each AI tool
- [ ] Default permissions set to minimum required
- [ ] Permission escalation process defined
- [ ] Regular permission audits conducted
- [ ] Violations tracked and remediated

#### Exception Process

| Condition                | Approval Required | Documentation       |
| ------------------------ | ----------------- | ------------------- |
| Extended file access     | Tech Lead         | Scope justification |
| Terminal auto-execute    | Manager           | Risk acknowledgment |
| Network access expansion | Security Team     | Security review     |

### Related Principles

- **GSC-003**: Sandboxing (permissions within sandbox)
- **GSC-004**: Git Access Controls (git-specific permissions)
- **DC-004**: Agentic Development (agent permissions)

---

<a name="gsc-003"></a>

## GSC-003: Sandboxing & Isolation

### Statement

> **Execute AI agents in sandboxed environments that isolate them from production systems, sensitive data, and critical infrastructure.**

### Rationale

| Dimension                | Justification                                                    |
| ------------------------ | ---------------------------------------------------------------- |
| **Business Value**       | Isolation protects business-critical systems from AI errors      |
| **Technical Foundation** | Sandboxing provides defense-in-depth for AI operations           |
| **Risk Mitigation**      | Contained execution limits damage from malicious or erroneous AI |
| **Human Agency**         | Humans control sandbox boundaries and escape conditions          |

### Implications

```mermaid
flowchart TB
    subgraph Untrusted["🔴 UNTRUSTED ZONE"]
        Sandbox["AI Agent Sandbox<br/>• Containerized execution<br/>• Network filtering<br/>• Resource limits (CPU, memory, disk)<br/>• Time limits for operations"]
    end

    subgraph Gateway["🟡 PERMISSION GATEWAY"]
        Validation["Request validation"]
        Approval["Approval workflow"]
        Audit["Audit logging"]
    end

    subgraph Trusted["🟢 TRUSTED ZONE"]
        Prod["Production systems<br/><i>NO AI access</i>"]
        Secrets["Secrets/credentials<br/><i>NO AI access</i>"]
        Protected["Protected branches<br/><i>Human-only</i>"]
    end

    Sandbox --> Validation
    Validation --> Approval
    Approval --> Audit
    Audit -.->|"Controlled Access"| Trusted
```

#### Tool Sandboxing Capabilities

| Tool           | Built-in Sandbox | Network Control | Resource Limits |
| -------------- | ---------------- | --------------- | --------------- |
| Claude Code    | ✅ Yes           | ✅ Yes          | ✅ Yes          |
| Cursor         | ⚠️ Partial       | ❌ No           | ❌ No           |
| GitHub Copilot | ⚠️ Cloud-based   | N/A             | N/A             |
| Aider          | ❌ No            | ❌ No           | ❌ No           |

| Area        | Implication                                            |
| ----------- | ------------------------------------------------------ |
| Development | Use AI tools with sandboxing support when possible     |
| Governance  | Sandboxing requirements documented by risk level       |
| Skills      | Train teams on sandbox configuration and monitoring    |
| Tools       | Evaluate sandboxing capabilities during tool selection |

### Maturity Alignment

| Level           | Requirements                                           |
| --------------- | ------------------------------------------------------ |
| **Base (L1)**   | Workspace isolation; no production access              |
| **Medium (L2)** | Container-based sandboxing; network filtering          |
| **High (L3)**   | Full isolation with approval gateways; resource limits |

### Governance

#### Compliance Measures

- [ ] Sandboxing requirements defined by use case
- [ ] Tools evaluated for sandboxing capabilities
- [ ] Production isolation verified
- [ ] Resource limits configured
- [ ] Sandbox escapes monitored and investigated

#### Exception Process

| Condition                | Approval Required | Documentation   |
| ------------------------ | ----------------- | --------------- |
| Reduced isolation        | Security Team     | Risk acceptance |
| Extended resource limits | Manager           | Justification   |
| Network filter exception | Security Lead     | Security review |

### Related Principles

- **GSC-002**: Permission Boundaries (permissions within sandbox)
- **TSI-001**: Evaluation Framework (evaluate sandboxing)
- **TQC-002**: Security Scanning (scan sandbox outputs)

---

<a name="gsc-004"></a>

## GSC-004: Git Access Controls

### Statement

> **Restrict AI agent git operations to feature branches, prohibit direct commits to protected branches, and NEVER allow AI merge authority.**

### Rationale

| Dimension                | Justification                                                   |
| ------------------------ | --------------------------------------------------------------- |
| **Business Value**       | Protected branches ensure code quality and review processes     |
| **Technical Foundation** | Git controls prevent unauthorized changes to production code    |
| **Risk Mitigation**      | Merge restrictions ensure human review of all AI-generated code |
| **Human Agency**         | Humans retain final authority over what enters the codebase     |

### Implications

#### Git Permission Matrix

| Operation            | AI Agent | Human Dev | Lead/Admin |
| -------------------- | :------: | :-------: | :--------: |
| Clone/Fetch          |    ✅    |    ✅     |     ✅     |
| Create Branch        |    ✅    |    ✅     |     ✅     |
| Commit (feature)     |   ✅\*   |    ✅     |     ✅     |
| Commit (main/master) |    ❌    |    ❌     |     ✅     |
| Push (feature)       |    ✅    |    ✅     |     ✅     |
| Push (protected)     |    ❌    |    ❌     |     ✅     |
| Create PR            |    ✅    |    ✅     |     ✅     |
| Approve PR           |    ❌    |    ✅     |     ✅     |
| Merge PR             |    ❌    |  ⚠️\*\*   |     ✅     |
| Force Push           |    ❌    |    ❌     |     ⚠️     |
| Delete Branch        |    ❌    |    ✅     |     ✅     |
| Modify Branch Rules  |    ❌    |    ❌     |     ✅     |

> \* AI commits must include attribution (e.g., "Co-authored-by")
> \*\* Requires approval from another human

#### Branch Naming for AI

**Pattern:** `ai/<tool>/<description>`

**Examples:**

- `ai/copilot/fix-auth-bug`
- `ai/claude/implement-feature-123`
- `ai/cursor/refactor-api-handler`

#### Commit Attribution

**Required trailer for AI-generated commits:**

```
Co-authored-by: AI Assistant <ai@example.com>
AI-Tool: claude-code/cursor/copilot
AI-Session: <session-id>
```

| Area        | Implication                                          |
| ----------- | ---------------------------------------------------- |
| Development | AI tools configured to use feature branches only     |
| Governance  | Branch protection rules enforced at repository level |
| Skills      | Train developers on AI branch naming and attribution |
| Tools       | Configure git hooks to enforce AI commit attribution |

### Maturity Alignment

| Level           | Requirements                                         |
| --------------- | ---------------------------------------------------- |
| **Base (L1)**   | Protected branches; manual attribution               |
| **Medium (L2)** | Automated branch rules; commit hooks for attribution |
| **High (L3)**   | Integrated attribution; automated compliance checks  |

### Governance

#### Compliance Measures

- [ ] Branch protection rules configured
- [ ] AI branch naming convention enforced
- [ ] Commit attribution required and validated
- [ ] Merge authority limited to humans
- [ ] Regular audits of AI commit activity

#### Exception Process

| Condition                | Approval Required | Documentation  |
| ------------------------ | ----------------- | -------------- |
| Direct push to protected | Never allowed     | N/A            |
| AI merge authority       | Never allowed     | N/A            |
| Attribution waiver       | Tech Lead         | Temporary only |

### Related Principles

- **GSC-002**: Permission Boundaries (git permissions)
- **DC-004**: Agentic Development (agent git operations)
- **GSC-006**: Audit & Traceability (git audit trail)

---

<a name="gsc-005"></a>

## GSC-005: Data Classification

### Statement

> **Classify all data according to sensitivity levels and enforce restrictions on what data can be exposed to AI tools based on classification.**

### Rationale

| Dimension                | Justification                                                     |
| ------------------------ | ----------------------------------------------------------------- |
| **Business Value**       | Data protection prevents breaches and maintains customer trust    |
| **Technical Foundation** | Classification enables consistent data handling policies          |
| **Risk Mitigation**      | Restricted data never reaches AI tools that could expose it       |
| **Human Agency**         | Humans define classifications; AI operates within data boundaries |

### Implications

#### Data Classification Matrix

| Classification | AI Tool Usage       | Controls                   |
| -------------- | ------------------- | -------------------------- |
| PUBLIC         | Unrestricted        | Standard logging           |
| INTERNAL       | Approved tools only | Enhanced logging, no cloud |
| CONFIDENTIAL   | On-premise AI only  | Air-gapped, full audit     |
| RESTRICTED     | **NO AI TOOLS**     | Prohibited                 |
| SECRETS        | **NEVER**           | Technical enforcement      |
| PII/PHI        | Special approval    | Privacy controls, no cloud |

#### Secrets That Must NEVER Reach AI

- API keys and tokens
- Database credentials
- Private keys and certificates
- Connection strings with credentials
- OAuth client secrets
- Encryption keys

| Area        | Implication                                           |
| ----------- | ----------------------------------------------------- |
| Development | Check data classification before including in context |
| Governance  | Data classification policy documented and enforced    |
| Skills      | Train developers on data classification rules         |
| Tools       | Use tools with data classification awareness          |

### Maturity Alignment

| Level           | Requirements                                     |
| --------------- | ------------------------------------------------ |
| **Base (L1)**   | Manual classification check; secret scanning     |
| **Medium (L2)** | Automated classification; pattern detection      |
| **High (L3)**   | Integrated data catalog; AI-aware classification |

### Governance

#### Compliance Measures

- [ ] Data classification policy documented
- [ ] Secret scanning enabled in AI tools
- [ ] PII/PHI detection configured
- [ ] Classification violations tracked
- [ ] Regular data exposure audits

#### Exception Process

| Condition                | Approval Required | Documentation  |
| ------------------------ | ----------------- | -------------- |
| Confidential in cloud AI | Never allowed     | N/A            |
| PII exposure             | Privacy Officer   | Privacy review |
| Internal data exception  | Manager           | Business case  |

### Related Principles

- **GSC-002**: Permission Boundaries (data access permissions)
- **GSC-006**: Audit & Traceability (data access logging)
- **TQC-002**: Security Scanning (secret detection)

---

<a name="gsc-006"></a>

## GSC-006: Audit & Traceability

### Statement

> **Maintain comprehensive audit trails of all AI tool activities, enabling traceability, compliance verification, and incident investigation.**

### Rationale

| Dimension                | Justification                                                        |
| ------------------------ | -------------------------------------------------------------------- |
| **Business Value**       | Audit trails enable compliance and build stakeholder trust           |
| **Technical Foundation** | Logging infrastructure supports investigation and improvement        |
| **Risk Mitigation**      | Traceability enables rapid incident response and root cause analysis |
| **Human Agency**         | Audit trails ensure human oversight of AI activities                 |

### Implications

#### Minimum Audit Fields

| Field          | Description                     |
| -------------- | ------------------------------- |
| Timestamp      | When the AI activity occurred   |
| User ID        | Who initiated the AI operation  |
| Tool Name      | Which AI tool was used          |
| Tool Version   | Version of the AI tool          |
| Activity Type  | Completion, chat, agent, etc.   |
| Input Hash     | Hash of input for traceability  |
| Output Hash    | Hash of output for traceability |
| Files Accessed | Which files were read/written   |
| Commands Run   | Terminal commands executed      |
| Git Operations | Commits, branches, PRs created  |
| Review Status  | Pending, approved, rejected     |
| Reviewer ID    | Who reviewed (if applicable)    |

#### Retention Requirements

- **Standard activities:** Minimum 1 year
- **Compliance-relevant activities:** Minimum 7 years
- **Storage:** Immutable for audit integrity
- **Access:** Searchable for incident investigation

| Area        | Implication                                          |
| ----------- | ---------------------------------------------------- |
| Development | AI tools configured with audit logging enabled       |
| Governance  | Audit requirements documented and verified           |
| Skills      | Train teams on audit log interpretation              |
| Tools       | Select tools with comprehensive logging capabilities |

### Maturity Alignment

| Level           | Requirements                                          |
| --------------- | ----------------------------------------------------- |
| **Base (L1)**   | Basic logging; manual audit review                    |
| **Medium (L2)** | Centralized logging; automated compliance reports     |
| **High (L3)**   | Real-time monitoring; anomaly detection; AI forensics |

### Governance

#### Compliance Measures

- [ ] Audit logging enabled for all AI tools
- [ ] Retention policies configured
- [ ] Regular audit reviews conducted
- [ ] Compliance reports generated
- [ ] Incident investigation procedures documented

#### Exception Process

| Condition           | Approval Required | Documentation     |
| ------------------- | ----------------- | ----------------- |
| Reduced logging     | Security Team     | Risk acceptance   |
| Shortened retention | Compliance Lead   | Regulatory review |
| Log deletion        | Never allowed     | N/A               |

### Related Principles

- **GSC-001**: Governance Framework (audit supports governance)
- **GSC-004**: Git Access Controls (git audit trail)
- **DM-002**: AI Operations (operational monitoring)

---

<a name="gsc-007"></a>

## GSC-007: Responsible AI Operations

### Statement

> **Operate AI tools ethically, ensuring fairness, transparency, and accountability in all AI-assisted development activities.**

### Rationale

| Dimension                | Justification                                                    |
| ------------------------ | ---------------------------------------------------------------- |
| **Business Value**       | Responsible operations build trust and prevent reputation damage |
| **Technical Foundation** | Ethical guidelines translate into operational controls           |
| **Risk Mitigation**      | Proactive ethics prevents harm and regulatory issues             |
| **Human Agency**         | Humans define ethical boundaries; AI operates within them        |

### Implications

#### Operational Ethics Principles

**1. TRANSPARENCY**

- Disclose AI assistance in code and documentation
- Be clear about AI capabilities and limitations

**2. ACCOUNTABILITY**

- Humans remain responsible for all AI outputs
- No "the AI did it" excuses

**3. FAIRNESS**

- Equal access to AI tools within teams
- Consider accessibility in AI tool selection

**4. SECURITY**

- Prioritize security over convenience
- Never bypass security controls for AI efficiency

#### Prohibited Practices

| ❌ Prohibited                            | Rationale                     |
| ---------------------------------------- | ----------------------------- |
| Using AI to bypass code review           | Undermines quality controls   |
| Claiming AI code as solely human-written | Violates transparency         |
| Using AI on unauthorized data            | Data classification violation |
| Disabling AI safety controls             | Security risk                 |
| Using AI to generate malicious code      | Ethical violation             |

| Area        | Implication                                        |
| ----------- | -------------------------------------------------- |
| Development | Follow responsible AI practices in daily work      |
| Governance  | Responsible AI guidelines documented and enforced  |
| Skills      | Ethics training for all AI tool users              |
| Tools       | Select tools that support responsible AI practices |

### Maturity Alignment

| Level           | Requirements                                     |
| --------------- | ------------------------------------------------ |
| **Base (L1)**   | Documented guidelines; basic training            |
| **Medium (L2)** | Integrated into workflows; regular reinforcement |
| **High (L3)**   | Culture of responsibility; proactive improvement |

### Governance

#### Compliance Measures

- [ ] Responsible AI guidelines documented
- [ ] Training completed by all AI tool users
- [ ] Prohibited practices communicated
- [ ] Ethics violations tracked and addressed
- [ ] Regular ethics assessments conducted

#### Exception Process

| Condition               | Approval Required | Documentation     |
| ----------------------- | ----------------- | ----------------- |
| Ethics guideline waiver | Ethics Board      | Ethical review    |
| New use case evaluation | Governance Board  | Ethics assessment |
| Reported violation      | HR + Legal        | Investigation     |

### Related Principles

- **GSC-001**: Governance Framework (ethics governance)
- **TTA-002**: Adoption Governance (responsible adoption)
- **DC-001**: AI-Human Collaboration (ethical collaboration)

---

## Category Summary

### Key Takeaways

1. **Permissions define boundaries** - Explicit limits on what AI can access
2. **Sandboxing contains risk** - Isolate AI from critical systems
3. **Git controls protect code** - AI never gets merge authority
4. **Data classification prevents exposure** - Secrets never reach AI
5. **Audit trails enable oversight** - Log everything for accountability
6. **Responsible operations build trust** - Ethics are non-negotiable

---

## Next Steps

| Action               | Link                                                 |
| -------------------- | ---------------------------------------------------- |
| View all principles  | [Principles Index](../)                              |
| Related: Development | [DC Principles](../development_and_coding/)          |
| Related: Tools       | [TSI Principles](../tool_selection_and_integration/) |
| Constitution         | [Framework Constitution](/docs/constitution/)        |

---

## License

**LocalM-AiD Framework Principles**

Copyright (c) 2025 Nilay Parikh

This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0. If a copy of the MPL was not distributed with this file, You can obtain one at [http://mozilla.org/MPL/2.0/](http://mozilla.org/MPL/2.0/).

### Attribution Required

When using or redistributing these principles, you must:

- ✅ **Provide visible credit** to the LocalM-AiD Framework and Nilay Parikh
- ✅ **Keep this license** with any modified versions
- ✅ **Release modifications** under MPL 2.0
- ✅ **Indicate changes** you've made to the original

**Contact**: [@nilayparikh](https://twitter.com/nilayparikh) | [LinkedIn](https://www.linkedin.com/in/niparikh/)
