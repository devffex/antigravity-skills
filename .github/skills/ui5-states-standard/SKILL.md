---
name: ui5-states-standard
description: "TRIGGER: Need to handle request lifecycles, UI loading states, error handling, or empty lists. KEYWORDS: [ui-states, finite-state-machine, loading, error, empty, skeleton-screens]"
version: 1.0.0
---

# CONTEXT
Standardize UI request lifecycles using the "Five UI States" framework (Ideal, Loading, Empty, Error, Partial) to ensure deterministic and professional interfaces.

# CAPABILITIES
- ANALYZE: Evaluate current UI state management and identify gaps in the lifecycle.
- RECOMMEND: Provide the correct UI state implementation based on the request lifecycle.
- BRAINSTORM: Create relevant "Empty State" call-to-actions and "Error State" problem details.

# ENFORCEMENT_RULES
- MUST use a single `status` enum (`idle`, `loading`, `success`, `error`) instead of multiple booleans.
- MUST implement Skeleton Screens for the Loading State if the request takes >200ms.
- ALWAYS extract RFC 7807 status codes for Error States.
- NEVER leave a blank screen; there must always be a defined UI state.
- ALWAYS provide a Call to Action (CTA) in Empty States.

# WORKFLOW
1. ANALYZE: Check the request lifecycle implementation (e.g., `isLoading`, `isError`).
2. REFACTOR: Converge multiple booleans into a single `status` enum (Idle, Loading, Success, Error).
3. IMPLEMENT: Apply the 5 UI States logic:
    - `loading`: Show Skeletons/Spinners.
    - `success` (empty): Show Empty State illustration + CTA.
    - `success` (data): Show Ideal State (Data).
    - `error`: Show Error State with Retry option using RFC 7807 extraction.
4. VALIDATE: Ensure no "impossible states" can occur.
