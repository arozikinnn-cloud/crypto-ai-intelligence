# Database foundation

Phase 1 defines a SQLAlchemy declarative base and session factory. No business tables are created yet.

Planned entities:
- Market candle / market snapshot
- Signal and signal event
- Signal outcome
- Watchlist item
- Notification delivery record
- Data-provider status

Use migrations (Alembic) before introducing persistent business tables. SQLite is for local development; production deployment may use PostgreSQL.
