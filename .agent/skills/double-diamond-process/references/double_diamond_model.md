# Double Diamond Mental Model

The Double Diamond is a powerful mental model because it forces you to move from "vague idea" to "precise execution" without skipping the critical thinking steps. It is divided into two main diamonds: the first is about finding the right problem, and the second is about finding the right solution.

## Phase 1: Discover (Diverging)
In the Discovery phase, you "diverge" by asking questions to understand the full scope of the problem. You aren't looking for a solution yet; you are looking for context.
- Talk to stakeholders.
- Analyze logs or user behavior.
- Ask: "Are users unable to find items? Are they searching by name, category, or date? Is the current navigation failing them?"
- Result: A clear understanding of the pain point.

## Phase 2: Define (Converging)
Take all information and "converge" on a single, clear definition.
- Create Technical Requirements.
- Decide what is in scope vs out of scope.
- Define constraints (e.g., performance goals, formats).
- Result: Clear Problem Statement.

## Phase 3: Develop (Diverging)
Engineering Design phase. Diverge again to think of different ways to solve it technically.
- Sketch architectural paths (WebSocket vs Polling, Monolith vs Cloud Function).
- Design API contracts (RFC 7807).
- Map out UI states (Ideal, Loading, Empty, Error, Partial).
- Result: Architecture diagrams and pseudo-code.

## Phase 4: Deliver (Converging)
Implementation. Converge on the best technical path.
- Iterative Building: Core logic -> Tests -> Happy Path -> Loading/Error states.
- Polish: Readability, documentation, and performance.
- Result: A feature that solves the original problem.
