# Laws of UX Reference Cache

This document contains a curated list of psychological and technical principles to guide high-performance UI design and implementation.

---

## 🧠 Heuristics (Common Sense Rules)

### Aesthetic-Usability Effect
*   **Definition**: Users often perceive aesthetically pleasing design as design that’s more usable.
*   **Impact**: Beautiful interfaces can mask minor usability issues and create positive emotional responses.

### Fitts’s Law
*   **Definition**: The time to acquire a target is a function of the distance to and size of the target.
*   **Impact**: Important buttons (like "Sign Up") should be large and placed in reachable areas.

### Hick’s Law
*   **Definition**: The time it takes to make a decision increases with the number and complexity of choices.
*   **Impact**: Minimize options at any given time to prevent user overwhelm.

### Jakob’s Law
*   **Definition**: Users spend most of their time on other sites.
*   **Impact**: Prefer familiar patterns (e.g., shopping cart icon in top right) to reduce learning curves.

### Miller’s Law
*   **Definition**: The average person can only keep about 7 (± 2) items in their working memory.
*   **Impact**: "Chunk" information by grouping related items together.

### Parkinson’s Law
*   **Definition**: Any task will inflate until all available time is spent.
*   **Impact**: Use clear instructions and autofill to help users complete tasks quickly.

---

## 👁️ Gestalt Principles (Visual Perception)

### Law of Common Region
*   **Definition**: Elements sharing an area with a clearly defined boundary are perceived as a group.
*   **Implementation**: Use background colors or borders to surround related content.

### Law of Proximity
*   **Definition**: Objects near each other tend to be grouped together.
*   **Implementation**: Place labels very close to their input fields.

### Law of Prägnanz
*   **Definition**: People perceive ambiguous images as the simplest form possible.
*   **Implementation**: Use clean, simple icons rather than highly detailed ones.

### Law of Similarity
*   **Definition**: Similar elements are perceived as a complete picture or group.
*   **Implementation**: Use consistent colors or shapes for buttons performing the same action.

### Law of Uniform Connectedness
*   **Definition**: Visually connected elements are perceived as more related.
*   **Implementation**: Use lines to connect steps in a progress bar.

---

## 💭 Cognitive Biases (How We Think)

### Peak-End Rule
*   **Definition**: People judge an experience based on how they felt at its peak and at its end.
*   **Impact**: Make "success" states (e.g., purchase completion) extra delightful.

### Serial Position Effect
*   **Definition**: Users remember the first and last items in a series best.
*   **Impact**: Place key navigation links at the far ends of a menu.

### Von Restorff Effect (Isolation Effect)
*   **Definition**: When multiple similar objects are present, the one that differs is most likely to be remembered.
*   **Impact**: Use high-contrast colors for Call-to-Action (CTA) buttons.

### Zeigarnik Effect
*   **Definition**: People remember uncompleted or interrupted tasks better than completed ones.
*   **Impact**: Use onboarding checklists or progress trackers to encourage completion.

---

## ⚙️ Technical Principles

### Doherty Threshold
*   **Definition**: Productivity soars when interaction pace is under 400ms.
*   **Performance Goal**: Ensure response times (or meaningful feedback) are within this threshold to keep users focused.

### Occam’s Razor
*   **Definition**: Select the simplest hypothesis/solution among competing ones.
*   **Design Goal**: Don't add complexity if a simpler solution achieves the same result.

### Pareto Principle
*   **Definition**: ~80% of effects come from 20% of causes.
*   **Strategy**: Focus on the 20% of features used by 80% of users.

### Postel’s Law (Robustness Principle)
*   **Definition**: Be liberal in what you accept, and conservative in what you send.
*   **Implementation**: Flexible user input (multiple phone formats) but precise and clear output.

### Tesler’s Law (Conservation of Complexity)
*   **Definition**: Every system has inherent complexity that cannot be removed.
*   **Implementation**: Shift complexity away from the user and onto the technology/backend.
