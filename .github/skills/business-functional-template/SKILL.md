---
name: business-functional-template
description: "TRIGGER: Planning a new feature or improving an existing workflow to align business intent with implementation. KEYWORDS: [feature-planning, business-intent, functional-template, requirements, scenarios, entities, rules, ux]"
version: 1.0.0
---

# CONTEXT
Provides a structured business-level template to capture intent, scenarios, actions, and rules before implementation. It bridges business goals and engineering decisions by standardizing discovery inputs.

# CAPABILITIES
- Provide a business-level functional template for feature planning -> PATH: `./assets/business-functional-template.md`
- Guide teams to define entities, scenarios, actions, rules, and simplicity constraints

# ENFORCEMENT_RULES
- MUST identify primary, secondary, and external entities
- MUST capture the state of mind before the feature is used
- MUST define current friction and the cost of doing nothing
- MUST define the desired outcome and the business benefit
- MUST map initiation, input, transformation, and completion steps
- MUST define validation and persistence rules
- MUST document happy path and edge cases
- ALWAYS use business language; NEVER use developer jargon
- ALWAYS minimize required input data

# WORKFLOW
1. ANALYZE: Capture the feature goal and target audience
2. EXECUTE: Fill the template sections in order (Entities -> Scenario -> Actions -> Simplicity)
3. VALIDATE: Check the summary checklist for completeness and contradictions
4. OUTPUT: Deliver the completed template as the implementation brief
