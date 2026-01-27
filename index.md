---
layout: default
title: LocalM™ AiD Framework
---

# LocalM<sup>™</sup> AiD Framework

**Enterprise Architecture Principles for AI-Assisted Software Development**

<div class="hero-badges">
  <span class="hero-version">v0.0.1</span>
  <span class="hero-status">In Peer Review</span>
</div>

---

## Framework Purpose

LocalM™ AiD defines **27 Enterprise Architecture Principles** organized across seven categories to enable organizations to adopt AI-assisted software development with appropriate governance, quality standards, and human oversight.

> **Scope**: This framework is 100% focused on EA Principles - foundational statements that guide technology decisions for AI-assisted development.

---

## Core Tenets

These five tenets underpin all principles in the framework:

```mermaid
flowchart TB
    subgraph TENETS["LocalM AiD CORE TENETS"]
        direction TB
        T1["HUMAN AGENCY<br/>Programmer directs; AI assists"]
        T2["STRUCTURED INTERACTION<br/>Methodology over vibe coding"]
        T3["CONTINUOUS VALIDATION<br/>Quality gates throughout"]
        T4["TRACEABILITY<br/>All interactions auditable"]
        T5["PROGRESSIVE MATURITY<br/>Grow responsibly"]

        T1 --- T2 --- T3
        T4 --- T5
    end

    style TENETS fill:#f8fafc,stroke:#6366f1,stroke-width:2px
    style T1 fill:#e0e7ff,stroke:#6366f1
    style T2 fill:#e0e7ff,stroke:#6366f1
    style T3 fill:#e0e7ff,stroke:#6366f1
    style T4 fill:#e0e7ff,stroke:#6366f1
    style T5 fill:#e0e7ff,stroke:#6366f1
```

---

## Principle Structure

Every LocalM AiD principle follows the **TOGAF-aligned four-part structure**:

| Component        | Description                                  |
| ---------------- | -------------------------------------------- |
| **Name**         | Short, memorable identifier (e.g., DM-001)   |
| **Statement**    | Clear, declarative principle (1-2 sentences) |
| **Rationale**    | Business/technical justification ("why")     |
| **Implications** | Consequences and requirements for adoption   |

Plus LocalM AiD-specific additions:

| Component              | Description                               |
| ---------------------- | ----------------------------------------- |
| **Maturity Alignment** | Requirements at Base, Medium, High levels |
| **Governance**         | Exception handling, compliance measures   |
| **Related Principles** | Cross-references within the framework     |

---

## Seven Principle Categories

```mermaid
flowchart TB
    subgraph STRATEGY["STRATEGY & PLANNING LAYER"]
        PS["PS: Planning &<br/>Strategy (4)"]
        TSI["TSI: Tool Selection<br/>& Integration (3)"]
    end

    subgraph DEV["DEVELOPMENT LAYER"]
        TTA["TTA: Team Training<br/>& Adoption (2)"]
        DC["DC: Development<br/>& Coding (6)"]
    end

    subgraph DELIVERY["DELIVERY LAYER"]
        TQC["TQC: Testing &<br/>Quality Control (3)"]
        DM["DM: Deployment<br/>& Maintenance (2)"]
    end

    subgraph GOV["GOVERNANCE LAYER"]
        GSC["GSC: Governance, Security & Compliance (2)"]
    end

    STRATEGY --> DEV --> DELIVERY --> GOV

    style STRATEGY fill:#e3f2fd,stroke:#1976d2
    style DEV fill:#e8f5e9,stroke:#388e3c
    style DELIVERY fill:#fff3e0,stroke:#f57c00
    style GOV fill:#fce4ec,stroke:#c2185b
```

**Total: 22 Principles**

| Category                          | Code | Principles | Focus Area                   |
| --------------------------------- | ---- | ---------- | ---------------------------- |
| Planning & Strategy               | PS   | 4          | Strategic AI integration     |
| Tool Selection & Integration      | TSI  | 3          | AI tool ecosystem choices    |
| Team Training & Adoption          | TTA  | 2          | Human capability development |
| Development & Coding              | DC   | 6          | AI-assisted coding practices |
| Testing & Quality Control         | TQC  | 3          | AI quality assurance         |
| Deployment & Maintenance          | DM   | 2          | AI operations lifecycle      |
| Governance, Security & Compliance | GSC  | 2          | AI risk management           |

---

## Maturity Model

```mermaid
flowchart TB
    subgraph HIGH["HIGH (L3) - Advanced"]
        H["Agentic AI | Autonomous Testing | CI/CD AI<br/>Predictive Planning | Self-Healing Code"]
    end

    subgraph MEDIUM["MEDIUM (L2) - Enhanced"]
        M["AI Code Review | Structured Prompting<br/>Quality Gates | Documentation Generation"]
    end

    subgraph BASE["BASE (L1) - Foundation"]
        B["Human Review | Basic Training | Code Completion<br/>Security Scanning | Traceability"]
    end

    BASE --> MEDIUM --> HIGH

    style HIGH fill:#c8e6c9,stroke:#2e7d32
    style MEDIUM fill:#fff9c4,stroke:#f9a825
    style BASE fill:#e3f2fd,stroke:#1565c0
```

**Legend**: Each level builds on requirements of levels below

| Level      | Name       | AI Autonomy               | Requirements             |
| ---------- | ---------- | ------------------------- | ------------------------ |
| **Base**   | Foundation | L1: AI-Assisted Options   | Mandatory for all        |
| **Medium** | Enhanced   | L2: AI-Assisted Selection | Base + expanded controls |
| **High**   | Advanced   | L3: Partial Automation    | Medium + autonomous caps |

---

## Navigate Principles

| Category                          | Link                                                               | Principle Count |
| --------------------------------- | ------------------------------------------------------------------ | --------------- |
| All Principles                    | [View All →](principles/)                                          | 22              |
| Planning & Strategy               | [PS Principles →](principles/planning_and_strategy/)               | 4               |
| Tool Selection & Integration      | [TSI Principles →](principles/tool_selection_and_integration/)     | 3               |
| Team Training & Adoption          | [TTA Principles →](principles/team_training_and_adoption/)         | 2               |
| Development & Coding              | [DC Principles →](principles/development_and_coding/)              | 6               |
| Testing & Quality Control         | [TQC Principles →](principles/testing_and_quality_control/)        | 3               |
| Deployment & Maintenance          | [DM Principles →](principles/deployment_and_maintenance/)          | 2               |
| Governance, Security & Compliance | [GSC Principles →](principles/governance_security_and_compliance/) | 2               |

---

## Standards Alignment

LocalM AiD principles align with established EA and AI development standards:

| Standard      | Alignment                                                      |
| ------------- | -------------------------------------------------------------- |
| **TOGAF**     | Principle structure (Name, Statement, Rationale, Implications) |
| **AGENTS.md** | Agent configuration principles (DC-005)                        |
| **SKILL.md**  | Capability definition standards                                |
| **MCP**       | Model Context Protocol integration (TSI)                       |
| **A2A**       | Agent-to-Agent coordination (TSI)                              |
