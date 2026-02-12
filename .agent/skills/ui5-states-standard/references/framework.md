# The Five UI States Framework

Originally popularized by designer Scott Hurff, this framework ensures that a user is never left staring at a blank screen or a broken interface.

## 1. Ideal State
**When:** Data is fetched successfully.
**Goal:** Display the data clearly (the "Happy Path").
**Design:** Focus on readability and standard interactions.

## 2. Loading State
**When:** Request is pending (in-flight).
**Goal:** Show progress to prevent "jank" and reduce perceived latency.
**Standard:** Use **Skeleton Screens** that mimic the layout of the final data instead of generic spinners.

## 3. Empty State
**When:** Request is successful, but the returned data set is empty.
**Goal:** Explain why it's empty and provide a **Call to Action (CTA)**.
**Standard:** Swap the component for an illustration and an "Add Task" or "Get Started" button. Do not just show an empty table.

## 4. Error State
**When:** The request failed (4xx/5xx).
**Goal:** Explain the problem using **RFC 7807 (Problem Details)** and offer a "Retry."
**States:**
- **403:** Show "Access Denied" (Lock icon).
- **404:** Show "Not Found" (Magnifying Glass icon).
- **500:** Show "Server Issue" (Wrench icon).

## 5. Partial State
**When:** Some data loaded, but some failed (e.g., list items loaded but images failed).
**Goal:** Gracefully degrade.
**Design:** Show the data that is available and provide subtle warnings for the missing parts.

---

# Implementation Strategy: The Status Enum

Instead of multiple booleans (`isLoading`, `isError`, `hasData`), use a single `status` string:

- `idle`: Initial state (Zero State).
- `loading`: Request sent.
- `success`: Check data -> Empty State OR Ideal State.
- `error`: Request failed -> Error State.

## Stale-While-Revalidate (SWR)
When refetching data already in view, keep showing the old data but add a small, subtle loading indicator to signal an update is happening.
