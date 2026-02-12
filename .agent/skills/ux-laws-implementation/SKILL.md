---
name: ux-laws-implementation
description: "TRIGGER: Implementing UI components, designing user flows, or optimizing application performance. KEYWORDS: Laws of UX, Doherty Threshold, Heuristics, Gestalt, UI States"
version: 1.0.0
---

# CONTEXT
This skill ensures that all UI implementations adhere to psychological and technical principles for maximum usability and performance. It is particularly critical when the user requests "100% performance" or "premium design".

# CAPABILITIES
- **ANALYZE_UI**: Evaluate a proposed design or existing code against the [Laws of UX Reference](./references/laws-of-ux.md).
- **APPLY_HEURISTICS**: Implement Fitts's Law (button sizing), Hick's Law (choice reduction), and Miller's Law (information chunking).
- **OPTIMIZE_PERFORMANCE**: Apply the Doherty Threshold (<400ms feedback) and simplify logic via Occam's Razor.
- **GESTALT_STYLING**: Group elements using Proximity, Common Region, and Similarity.

# ENFORCEMENT_RULES
- **ALWAYS** provide visual feedback within 400ms (Doherty Threshold).
- **NEVER** overload the user with more than 7 choices at once (Miller's Law/Hick's Law).
- **MUST** use high-contrast styling for primary calls to action (Von Restorff Effect).
- **ALWAYS** check for "Empty", "Loading", and "Error" states to manage user expectations.
- **MUST** leverage familiarity by following Jakob’s Law for common patterns.

# WORKFLOW
1. **IDENTIFY**: Determine which UX category (Heuristic, Gestalt, Bias, Technical) is most relevant to the current task.
2. **CONSULT**: Review specific laws in [references/laws-of-ux.md](./references/laws-of-ux.md).
3. **DESIGN**: Apply the laws (e.g., increase hit area for Fitts's Law, add background for Common Region).
4. **VERIFY**: Check if interaction feedback is <400ms and if the primary action stands out.
5. **REFINE**: Remove non-essential items using the Pareto Principle (focus on the 20% that matters).
