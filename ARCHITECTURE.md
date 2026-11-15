# Architecture

## Phase 1
- Flutter: Android client and presentation layer.
- FastAPI: versioned HTTP API.
- SQLAlchemy: persistence abstraction.
- SQLite: local development default; PostgreSQL can be selected later using `DATABASE_URL`.
- GitHub Actions: backend test automation on pushes and pull requests.

## Planned data flow
Exchange/public data providers -> market-data adapters -> normalized market data -> analysis modules -> signal validation/lifecycle -> API -> Flutter UI and notification delivery.

## Design constraints
- Analysis-only; no exchange order execution.
- Provider failures and stale data must be visible.
- Every future signal must be traceable to timestamped input data.
- Separate market-data collection, analysis, signal validation, and presentation.
