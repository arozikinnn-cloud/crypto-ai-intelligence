from functools import lru_cache
from pydantic_settings import BaseSettings, SettingsConfigDict


class Settings(BaseSettings):
    app_name: str = "Crypto AI Intelligence"
    app_env: str = "development"
    log_level: str = "INFO"
    api_v1_prefix: str = "/api/v1"
    database_url: str = "sqlite:///./crypto_ai.db"
    cors_origins: str = ""

    model_config = SettingsConfigDict(
        env_file=".env",
        env_file_encoding="utf-8",
        extra="ignore",
    )


@lru_cache
def get_settings() -> Settings:
    return Settings()
