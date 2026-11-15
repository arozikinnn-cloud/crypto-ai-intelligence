# API conventions

- Root: `GET /`
- Health: `GET /health`
- Versioned health: `GET /api/v1/health`
- Future business endpoints belong under `/api/v1`.
- Use JSON responses and stable error codes.
- Do not expose stack traces, secrets, or provider credentials in API responses.
