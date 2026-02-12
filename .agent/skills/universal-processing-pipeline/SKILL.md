---
name: universal-processing-pipeline
description: "TRIGGER: Engineering a new feature, refactoring complex logic, or architecting a request/response flow. KEYWORDS: [pipeline, lifecycle, validation, orchestration, persistence, normalization, post-processing]"
version: 1.0.0
---

# CONTEXT
Established to ensure that every request or system interaction is handled with integrity, security, and clarity. This "Universal Processing Pipeline" serves as an architectural philosophy to prevent "garbage in, garbage out" and ensure deterministic results across any application domain.

# CAPABILITIES
- [Stage 1: Ingestion]: Capture intent and payload. Gather ambient context (Who and What).
- [Stage 2: Integrity]: Scrutinize input against contracts. Structure and safety validation (The Gatekeeper).
- [Stage 3: Orchestration]: Apply domain rules. Transform raw input into meaningful results (The Brain).
- [Stage 4: Persistence]: Commit state changes to the source of truth. Atomicity is paramount.
- [Stage 5: Normalization]: Filter and format output for the consumer. Translate complexity into simplicity.
- [Stage 6: Delivery]: Transmit response with clear confirmation and status (Success/Failure).
- [Stage 7: Post-Processing]: Handle side effects (logging, analytics, async tasks) without delaying the response.

# ENFORCEMENT_RULES
- NEVER proceed to Stage 3 if Stage 2 fails. Halt immediately.
- ALWAYS ensure Atomicity in Stage 4 (Succeed or Fail completely).
- MUST remain agnostic of the delivery mechanism in Stage 3.
- ALWAYS filter sensitive or internal fields in Stage 5.
- NEVER delay the Stage 6 delivery for Stage 7 tasks.

# WORKFLOW
1. **CAPTURE (Stage 1)**: Inspect the external stimuli. What is the user trying to do? Who are they?
2. **VALIDATE (Stage 2)**: Check schemas and constraints. Is the request structurally sound?
3. **LOGIC (Stage 3)**: Coordinate services and calculations. What are the rules of this transformation?
4. **SAVE (Stage 4)**: Finalize the state change. Ensure the database reflects reality.
5. **REFINE (Stage 5)**: Map the internal result to the public-facing response structure.
6. **RESPOND (Stage 6)**: Send the result to the caller with appropriate HTTP/Status codes.
7. **FINALIZE (Stage 7)**: Trigger notifications, audits, or background jobs.

# REFERENCE
![Universal Processing Pipeline](./assets/conceptual-diagram.mermaid)
