from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware

from app.api.v1.health import router as health_router
from app.core.config import get_settings
from app.core.logging import configure_logging
from app.core.errors import register_exception_handlers

settings = get_settings()
configure_logging(settings.log_level)

app = FastAPI(
    title=settings.app_name,
    version="0.1.0",
    description="Analysis-only crypto market intelligence API.",
)

origins = [origin.strip() for origin in settings.cors_origins.split(",") if origin.strip()]
app.add_middleware(
    CORSMiddleware,
    allow_origins=origins or [],
    allow_credentials=False,
    allow_methods=["GET"],
    allow_headers=["*"],
)

register_exception_handlers(app)
app.include_router(health_router)
app.include_router(health_router, prefix=settings.api_v1_prefix)


@app.get("/", tags=["system"])
def root():
    return {
        "name": settings.app_name,
        "status": "running",
        "mode": "analysis_only",
        "docs": "/docs",
    }
