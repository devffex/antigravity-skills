---
name: double-diamond-process
description: "TRIGGER: Starting a new feature, fixing a bug, or improving an existing functionality. KEYWORDS: [double-diamond, discovery, definition, development, delivery, architectural-design, technical-requirements]"
version: 1.0.0
---

# CONTEXT
Standardizes the thinking process for solving issues, implementing features, or making improvements using the Double Diamond model. It ensures the right problem is solved before the right technical solution is built.

# CAPABILITIES
- [Phase 1: Discover]: Diverge to understand full scope, context, and pain points.
- [Phase 2: Define]: Converge on technical requirements, constraints, and scope.
- [Phase 3: Develop]: Diverge on architectural paths and engineering design (API/UI standards).
- [Phase 4: Deliver]: Converge on implementation, iterative testing, and polishing.

# ENFORCEMENT_RULES
- NEVER start coding before completing Phase 2 (Define).
- ALWAYS define what is OUT OF SCOPE during Phase 2.
- MUST integrate `api-standard-response` (RFC 7807) during Phase 3 design.
- MUST integrate `ui5-states-standard` (Five UI States) during Phase 3 design.
- ALWAYS implement "Happy Path" first, then Layer in Loading and Error states during Phase 4.
- NEVER leave code undocumented or without performance checks.

# WORKFLOW
1. DISCOVER: Ask stakeholders questions, check logs, and define the user pain point.
2. DEFINE: Write Technical Requirements and a clear Problem Statement.
3. DEVELOP: Sketch architectural paths. Map API contracts and UI states using:
   - [API Standard](file:///home/julio/Work/devffex/skills/skills/api-standard-response/SKILL.md)
   - [UI States Standard](file:///home/julio/Work/devffex/skills/skills/ui5-states-standard/SKILL.md)
4. DELIVER: Build core logic, wrap in tests, implement Happy Path, and then Loading/Error states.
5. VALIDATE: Ensure the solution solves the problem defined in Phase 2.
