---
name: minimalist-high-density-ui
description: "TRIGGER: Implementing UI components, designing high-density interfaces, or applying minimalist aesthetics. KEYWORDS: minimalist, high-density, spacing, atomic design, premium UI, less is more"
version: 1.0.0
---

# CONTEXT
This skill focuses on creating functional, high-density, minimalist interfaces. It follows a "less is more" philosophy, prioritizing utilitarian efficiency over decorative elements. It is intended to be framework-agnostic, relying on global constants and abstract tokens.

# CAPABILITIES
- **APPLY_SPACING**: Implement strict geometric spacing (4px/8px) using CSS `gap`.
- **MINIMIZE_PADDING**: Apply compact padding (4px-16px) to maintain a "tool-like" aesthetic.
- **ALIGMENT_FLOW**: Enforce strict vertical or horizontal snapping to an invisible skeleton.
- **MICRO_SIZING**: Scale components (buttons, inputs) to minimalist dimensions without losing accessibility.
- **TOKEN_MAPPING**: Map framework-specific variables (Tailwind, MUI, etc.) to minimalist global tokens.

# ENFORCEMENT_RULES
- **ALWAYS** use `gap` for distribution instead of arbitrary margins.
- **NEVER** use sweeping margins that waste viewport real estate.
- **MUST** keep related components visually grouped with small gaps (8px-12px).
- **ALWAYS** reference global spacing tokens (e.g., `--spacing-small`) instead of hardcoded pixels.
- **MUST** ensure click targets remain accessible despite minimalist sizing.

# WORKFLOW
1. **ANALYZE**: Evaluate the viewport density requirements and identify "floating" elements.
2. **TOKENIZE**: Map the current project's CSS variables to minimalist tokens in [references/spacing-tokens.md](./references/spacing-tokens.md).
3. **STRUCTURE**: Snap components to a global grid with single-directional flow.
4. **REFINE**: Shrink padding and font sizes until only functional elements remain.
5. **VALIDATE**: Ensure the UI feels like a sharp, utilitarian extension of the agent's logic.
