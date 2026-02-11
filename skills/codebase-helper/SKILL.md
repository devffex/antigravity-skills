---
name: codebase-helper
description: "TRIGGER: User requires deep analysis of Antigravity-managed codebases or complex logic resolution. KEYWORDS: [antigravity, deep-dive, codebase, logic, flow, explanation, answer]"
version: 1.1.0
---

# CONTEXT
Empowers the **Antigravity** agent to resolve complex developer queries by performing structural code inspection, dependency mapping, and multi-step reasoning.

# CAPABILITIES
- [Map Dependency Graph] -> PATH: `./scripts/analyze_context.py`
- [Analyze Function Data Flow] -> Perform code inspection and trace variables across modules.
- [Verify Logic Propagation] -> Inspect error handling and state mutations.

# ENFORCEMENT_RULES
- MUST identify precise context (modules, functions, workflows).
- NEVER assume implementation details; verify via `grep` or file inspection.
- ALWAYS formulate 3-5 sub-questions to resolve complex queries.
- ALWAYS synthesize a final response with full context (entry points, edge cases).

# WORKFLOW
1. ANALYZE: Identify core issue and specific modules/functions involved.
2. DISCOVER: Search codebase for related files and dependencies.
3. DECOMPOSE: Formulate 3-5 sub-questions to build a complete mental model.
4. INSPECT: Resolve each sub-question through code inspection.
5. SYNTHESIZE: Combine findings into a concise, expert-level explanation.
6. VALIDATE: Ensure response includes state mutations and edge cases.
