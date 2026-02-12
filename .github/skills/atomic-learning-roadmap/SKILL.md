---
name: atomic-learning-roadmap
description: "TRIGGER: User wants a learning roadmap for any topic, with atomic, phase-based steps. KEYWORDS: [roadmap, learning, atomic, spaced repetition, exam, dependency, implementation]"
version: 1.0.0
---

# CONTEXT
This skill generates a structured, atomic learning roadmap for any topic, following four phases: Dependency Mapping, Implementation, Spaced Repetition, and Exam Simulation. It is designed for both GitHub Copilot and Antigravity agents, ensuring protocol compliance and deterministic output.

# CAPABILITIES
- Generate a four-phase learning roadmap for any topic -> PATH: `./scripts/roadmap.py`
- Output actionable steps for each phase in markdown or JSON

# ENFORCEMENT_RULES
- MUST follow the four-phase structure: Dependency Mapping, Implementation, Spaced Repetition, Exam Simulation
- NEVER skip a phase
- ALWAYS validate prerequisites before proceeding to implementation

# WORKFLOW
1. ANALYZE: Parse the user topic and identify prerequisite concepts (Phase A)
2. EXECUTE: Generate a minimum viable implementation plan (Phase B)
3. VALIDATE: Create a spaced repetition schedule (Phase C)
4. TEST: Output exam simulation prompts (Phase D)
5. OUTPUT: Return a complete, structured roadmap
