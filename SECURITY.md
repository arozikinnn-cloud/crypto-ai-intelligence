# Security baseline

- Store secrets only in environment variables or a secure secret store.
- `.env` is ignored by Git; `.env.example` contains placeholders only.
- Never commit exchange API keys, passwords, access tokens, or private keys.
- Use least-privilege access for integrations.
- Keep this application analysis-only; do not implement order placement in this project.
- Restrict CORS origins explicitly when deploying.
- Return generic server errors; log details server-side.
- Review dependency updates and CI results before merging.
