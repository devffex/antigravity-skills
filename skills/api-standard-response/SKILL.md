---
name: api-standard-response
description: "TRIGGER: User wants to standardize API error responses, implement RFC 7807, or fix non-compliant error bodies. KEYWORDS: [rfc7807, api, error, response, status, problem+json]"
version: 1.0.0
---

# CONTEXT
Implements the RFC 7807 (Problem Details for HTTP APIs) standard across frontends and backends to ensure machine-readable, decoupled, and consistent error reporting.

# CAPABILITIES
- [Standardize Response]: Transform random error strings/objects into `application/problem+json` compliant structures.
- [Validate RFC 7807]: Ensure existing error responses contain mandatory fields (type, title, status, detail, instance).
- [Middleware Pattern]: Design or fix middleware logic to automate error normalization.

# ENFORCEMENT_RULES
- MUST use `Content-Type: application/problem+json` for error states.
- MUST mirror the HTTP status code inside the JSON body as the `status` field.
- MUST use a unique URI for the `type` field to allow programmatic handling by the frontend.
- NEVER use this standard for successful (2xx) responses.
- ALWAYS allow custom extensions (e.g., `balance`, `invalid-params`) for additional context.

# WORKFLOW
1. ANALYZE: Identify current error reporting mechanism (Middleware, Exception Filters, or manually returned objects).
2. REFERENCE: Read `./references/rfc7807_spec.md` for exact field definitions.
3. MAP: Construct a mapping from internal error types to RFC 7807 `type` URIs and `title` strings.
4. IMPLEMENT: Modify the backend to return the standardized structure and ensure the frontend parses it correctly.
5. VERIFY: Confirm header and body status codes match and the `type` is stable.
