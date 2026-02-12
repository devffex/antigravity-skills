# RFC 7807: Problem Details for HTTP APIs

The core philosophy is to provide a standardized member suite for error responses using `Content-Type: application/problem+json`.

## Structure of the Response

| Field | Description | Type |
| :--- | :--- | :--- |
| **type** | A URI reference that identifies the problem type. | URI |
| **title** | A short, human-readable summary of the problem. | String |
| **status** | The HTTP status code (must match the header). | Number |
| **detail** | A human-readable explanation specific to this occurrence. | String |
| **instance** | A URI reference identifying the specific occurrence (e.g., request ID). | URI |

## Key Concepts
- **Decoupling**: Frontends look at the `type` (stable URI) for logic, while `title` and `detail` can change for UX/i18n.
- **Extensions**: You can add custom fields (e.g., `balance: 30`, `errors: [...]`) to provide more context.
- **Usage**: Strictly for 4xx and 5xx codes.

## Examples

### Business Logic Failure (403 Forbidden)
```json
{
  "type": "https://example.com/probs/out-of-funds",
  "title": "You do not have enough credit.",
  "status": 403,
  "detail": "Your current balance is $30, but that item costs $50.",
  "instance": "/account/12345/msgs/abc",
  "balance": 30
}
```

### Validation Error (400 Bad Request)
```json
{
  "type": "https://example.com/probs/invalid-params",
  "title": "One or more validation errors occurred.",
  "status": 400,
  "invalid-params": [
    {
      "name": "email",
      "reason": "Invalid email format"
    }
  ]
}
```
