# Example: Applying the Pipeline to User Login

This example demonstrates how an agent should think through the implementation of a "User Login" feature using the seven-stage philosophy.

## Stage 1: Ingestion and Context Gathering
- **Intent**: User wants to authenticate.
- **Payload**: `email`, `password`.
- **Context**: IP address (for rate limiting), Device Info (for session management), Timestamp.

## Stage 2: Integrity and Constraint Validation
- **Structural Check**: Are `email` and `password` present? Is `email` a valid format?
- **Security Check**: Are the fields within character limits? (Prevent Buffer Overflow/DoS).
- **Halt Condition**: If email is invalid, respond with `400 Bad Request` and "Malformed input."

## Stage 3: Orchestration and Business Logic
- **Lookup**: Fetch hashed password from the database using the email.
- **Compare**: Use a secure comparison function (e.g., `bcrypt.compare`) between the provided password and the hash.
- **Decision**: If match, generate a JWT; if not, increment login attempt counter.

## Stage 4: Persistence and State Commitment
- **Commit**: Update `last_login_at` timestamp in the database.
- **Audit**: Record the successful/failed login attempt in the `audit_logs` table.
- **Atomicity**: If updating `last_login_at` fails, do not return a success token.

## Stage 5: Normalization and Response Formatting
- **Filter**: Remove sensitive database metadata from the user object.
- **Map**: Prepare a response like `{ "status": "success", "token": "...", "user": { "name": "Julio", "email": "..." } }`.
- **Simplification**: Ensure the JSON structure matches what the frontend expects.

## Stage 6: Delivery and Feedback
- **Transmission**: Respond with `200 OK` (success) or `401 Unauthorized` (failure).
- **Clarity**: Provide clear messages like "Login successful" or "Invalid credentials."

## Stage 7: Post-Processing and Side Effects
- **Analytics**: Push "Login Event" to Segment or Mixpanel.
- **Notifications**: If login is from a new device, trigger an "Account accessed from new location" email asynchronously.
- **Cleanup**: Flush any expired sessions for this user.
