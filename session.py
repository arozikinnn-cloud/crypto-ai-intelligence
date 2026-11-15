from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker

from app.core.config import get_settings

_database_url = get_settings().database_url
_connect_args = {"check_same_thread": False} if _database_url.startswith("sqlite") else {}

engine = create_engine(_database_url, connect_args=_connect_args, pool_pre_ping=True)
SessionLocal = sessionmaker(bind=engine, autoflush=False, autocommit=False)
