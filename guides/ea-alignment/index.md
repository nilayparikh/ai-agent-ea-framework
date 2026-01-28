---
layout: default
title: EA Framework Alignment
description: Align LocalM™ AiD principles with your existing Enterprise Architecture framework
---

# EA Framework Alignment

Guidance for integrating LocalM™ AiD principles into your existing Enterprise Architecture governance.

<div class="page-meta-table">
  <div class="page-meta-item">
    <span class="page-meta-label">AUDIENCE</span>
    <span class="page-meta-value">Enterprise Architects</span>
  </div>
  <div class="page-meta-item">
    <span class="page-meta-label">FRAMEWORKS</span>
    <span class="page-meta-value">TOGAF • Zachman • SAFe</span>
  </div>
  <div class="page-meta-item">
    <span class="page-meta-label">PURPOSE</span>
    <span class="page-meta-value">Integration Guidance</span>
  </div>
  <div class="page-meta-item">
    <span class="page-meta-label">STATUS</span>
    <span class="page-meta-value">✅ Available</span>
  </div>
</div>

---

## Why EA Framework Integration Matters

LocalM™ AiD doesn't replace your existing Enterprise Architecture framework—it **extends** it to address the governance challenges specific to AI-assisted software development.

```mermaid
flowchart TB
    subgraph existing["Your Existing EA Framework"]
        togaf["TOGAF/Zachman/SAFe"]
        principles["EA Principles"]
        governance["Governance"]
    end

    subgraph localm["LocalM™ AiD Extension"]
        aiops["AI Tool Operations"]
        agent["Agent Permissions"]
        audit["AI Audit Trails"]
    end

    existing --> localm

    style existing fill:#1a1a2e,stroke:#4361ee
    style localm fill:#1a1a2e,stroke:#00ff94
```

---

## Alignment Guides

<div class="cards-grid">
  <a href="togaf" class="principle-card">
    <div class="principle-card-header">
      <span class="principle-id">TOGAF</span>
    </div>
    <div class="principle-card-content">
      <h3>TOGAF Alignment</h3>
      <p>Map LocalM™ AiD principles to TOGAF ADM phases and architecture domains. Integrate AI governance into your existing TOGAF practice.</p>
    </div>
    <div class="principle-card-footer">
      <span class="maturity-badge">Architecture Framework</span>
    </div>
  </a>

  <a href="zachman" class="principle-card">
    <div class="principle-card-header">
      <span class="principle-id">Zachman</span>
    </div>
    <div class="principle-card-content">
      <h3>Zachman Alignment</h3>
      <p>Position AI governance artifacts within Zachman Framework cells. Map AI operations to What, How, Where, Who, When, Why perspectives.</p>
    </div>
    <div class="principle-card-footer">
      <span class="maturity-badge">Classification Framework</span>
    </div>
  </a>

  <a href="safe" class="principle-card">
    <div class="principle-card-header">
      <span class="principle-id">SAFe</span>
    </div>
    <div class="principle-card-content">
      <h3>SAFe Alignment</h3>
      <p>Integrate AI governance into SAFe Portfolio, Large Solution, Essential, and Team levels. Enable AI-assisted development at scale.</p>
    </div>
    <div class="principle-card-footer">
      <span class="maturity-badge">Agile Framework</span>
    </div>
  </a>
</div>

---

## Quick Reference: Framework Mapping

| LocalM™ AiD Domain       | TOGAF                   | Zachman             | SAFe                  |
| :----------------------- | :---------------------- | :------------------ | :-------------------- |
| **AI Tool Governance**   | Technology Architecture | Function/Technology | Portfolio/Enablers    |
| **Agent Permissions**    | Security Architecture   | Who/How             | Team/Built-in Quality |
| **Audit & Compliance**   | Architecture Governance | When/Why            | Portfolio/Compliance  |
| **Maturity Progression** | ADM Phases              | Transformation      | PI Planning           |

---

## Integration Principles

### 1. Extend, Don't Replace

LocalM™ AiD principles are designed as **extensions** to your existing EA framework. They fill the gap in AI operational governance that traditional frameworks weren't designed to address.

### 2. Map to Existing Governance

Every LocalM™ AiD principle maps to one or more concerns in established frameworks. Use the alignment guides to identify these mappings for your organization.

### 3. Leverage Existing Processes

Your organization already has architecture review boards, governance committees, and approval workflows. LocalM™ AiD integrates into these existing processes rather than creating parallel structures.

### 4. Progressive Adoption

Start with foundational principles that align with your current maturity level. Advance as your organization's AI governance capabilities mature.

---

## Next Steps

1. **Assess your current framework** - Identify which EA framework(s) your organization uses
2. **Select an alignment guide** - Choose the guide that matches your primary framework
3. **Map existing governance** - Identify how AI governance fits into current processes
4. **Identify gaps** - Determine which LocalM™ AiD principles address unmet needs
5. **Plan integration** - Create a roadmap for incorporating AI governance principles
