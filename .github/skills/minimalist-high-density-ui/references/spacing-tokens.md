# Spacing and Design Tokens Reference

To achieve consistent minimalist density, use the following abstract tokens which should be mapped to the project's global state constants (CSS Variables, Tailwind Config, etc.).

## Atomic Spacing (Base Unit: 4px)

| Token | Logical Value | Visual Purpose |
| :--- | :--- | :--- |
| `--spacing-xs` | 4px | Internal micro-adjustment, tight icons. |
| `--spacing-sm` | 8px | Standard `gap` between related inputs/labels. |
| `--spacing-md` | 12px | Padding for small cards or sections. |
| `--spacing-lg` | 16px | Maximum standard padding for container blocks. |
| `--spacing-xl` | 24px | Major separation between independent modules. |

## Layout Principles

### High-Density Grid
- **Fluid Layout**: Distribute components across the full width to minimize eye travel.
- **Horizontal Snapping**: Align headers, text, and actions to the same vertical line.
- **Functional Density**: Prefer small font sizes (12px-14px) and condensed icons (16px-20px) to maximize data visibility.

### Component Sizing
- **Compact Buttons**: Padding `4px 12px` or `8px 16px`.
- **Condensed Inputs**: Height `32px` to `36px` instead of standard `40px+`.
- **Micro-labels**: Small, uppercase, or low-opacity labels for secondary information.

## Framework Integration

### Tailwind CSS example
```javascript
// tailwind.config.js
module.exports = {
  theme: {
    extend: {
      spacing: {
        'nano': '4px',
        'compact': '8px',
        'tight': '12px',
        'standard': '16px',
      }
    }
  }
}
```

### Vanilla CSS / Variables
```css
:root {
  --spacing-nano: 4px;
  --spacing-compact: 8px;
  --spacing-tight: 12px;
  --spacing-standard: 16px;
}
```
