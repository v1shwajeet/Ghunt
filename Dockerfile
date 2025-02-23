# Build stage
FROM python:3.11-slim as builder

# Set working directory
WORKDIR /app

# Install Poetry
ENV POETRY_VERSION=1.5.1
ENV POETRY_HOME=/opt/poetry
ENV POETRY_VENV=/opt/poetry-venv
ENV POETRY_CACHE_DIR=/opt/.cache

# Install poetry separated from system interpreter
RUN python -m venv $POETRY_VENV \
    && $POETRY_VENV/bin/pip install -U pip setuptools \
    && $POETRY_VENV/bin/pip install poetry==${POETRY_VERSION}

# Add Poetry to PATH
ENV PATH="${PATH}:${POETRY_VENV}/bin"

# Copy project files
COPY pyproject.toml poetry.lock ./

# Install dependencies
RUN poetry install --no-interaction --no-root --no-dev

# Copy source code
COPY . .

# Final stage
FROM python:3.11-slim

WORKDIR /app

# Create non-root user
RUN addgroup --system app && adduser --system --group app

# Copy built dependencies and source code
COPY --from=builder /app /app
COPY --from=builder /opt/poetry-venv /opt/poetry-venv

# Set ownership
RUN chown -R app:app /app

# Switch to non-root user
USER app

# Add Poetry to PATH
ENV PATH="/opt/poetry-venv/bin:$PATH"

# Run the application
CMD ["poetry", "run", "python", "main.py"]

