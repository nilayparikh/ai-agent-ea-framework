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
  
  Feel free to contact on Twitter/LinkedIn for questions or queries.
-->

````markdown
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
  
  Feel free to contact on Twitter/LinkedIn for questions or queries.
-->

# LocalM-AiD Framework

**LocalM-AiD: Enterprise Architecture Framework for AI-Assisted Software Development**

[![License: MPL 2.0](https://img.shields.io/badge/License-MPL%202.0-brightgreen.svg)](https://opensource.org/licenses/MPL-2.0)
[![GitHub Pages](https://img.shields.io/badge/docs-GitHub%20Pages-blue)](https://nilayparikh.github.io/ai-agent-ea-framework/)
[![Header Check](https://github.com/nilayparikh/ai-agent-ea-framework/workflows/Header%20Check/badge.svg)](https://github.com/nilayparikh/ai-agent-ea-framework/actions)

This repository contains the publishable LocalM-AiD (AI-Integrated Development) Enterprise Architecture Framework, structured for GitHub Pages with Jekyll.

## Structure

```
framework/
├── _config.yml              # Jekyll configuration
├── index.md                 # Landing page
├── _data/                   # Data files
│   └── navigation.yml       # Site navigation
├── _layouts/                # Page templates
│   └── default.html         # Base layout
├── assets/                  # Static assets
│   └── css/
│       └── main.css         # Site styles
├── principles/              # Framework principles
│   └── index.md             # Principles overview
├── guides/                  # Implementation guides
│   └── index.md             # Guides overview
├── reference/               # Reference documentation
│   └── index.md             # Reference overview
└── appendix/                # Supporting materials
    └── index.md             # Appendix overview
```

## Local Development

### Prerequisites

- Ruby 2.7+
- Bundler

### Setup

```bash
cd framework
bundle install
```

### Run Locally

```bash
bundle exec jekyll serve
```

Visit `http://localhost:4000/localm-aid/`

## Deployment

This site is configured for GitHub Pages deployment from the `framework/` folder.

### Configuration

In repository settings:

- Source: Deploy from branch
- Branch: main
- Folder: /framework

## Content Guidelines

All content must follow LocalM-AiD quality criteria:

- **Actionable** - Practical guidance included
- **Agnostic** - No tool/vendor references
- **Structured** - Tables, checklists, hierarchy
- **Traceable** - Sources referenced
- **Aligned** - Matches maturity model

## Adding Content

1. Create new `.md` file in appropriate folder
2. Add MPL 2.0 header (from `.eaf_header.txt`) to all new files
3. Add front matter (layout, title)
4. Update navigation in `_data/navigation.yml`
5. Follow naming conventions (`snake_case`)
6. Run `.\Check-Headers.ps1` to verify headers

## Header Compliance

All Markdown files in this repository must include the MPL 2.0 header. Use the provided script to check compliance:

```powershell
# Check all files for headers
.\Check-Headers.ps1 -Verbose

# Automatically add missing headers
.\Check-Headers.ps1 -Fix
```

The header check runs automatically on all pull requests via GitHub Actions.

## Contributing

Please see [CONTRIBUTING.md](.github/CONTRIBUTING.md) for detailed contribution guidelines, including:

- Code of Conduct
- How to submit issues and pull requests
- TOGAF principle structure requirements
- Style guide and best practices

## License

This project is licensed under the Mozilla Public License 2.0 - see the [LICENSE](LICENSE) file for details.

## Contact

**Nilay Parikh**
- Twitter: [@nilayparikh](https://twitter.com/nilayparikh)
- LinkedIn: [niparikh](https://www.linkedin.com/in/niparikh/)
- Email: nilayparikh@gmail.com

Feel free to reach out on Twitter/LinkedIn for questions or queries.

## Related

- [Project Structure](../docs/project_structure.md)
- [Naming Conventions](../docs/naming_conventions.md)
- [Structured Material](../structured_material/README.md)
