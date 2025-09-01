# 1) Base image
FROM python:3.10-slim

# 2) Prevent .pyc files and enable unbuffered logs
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1



# 3) Create work directory
WORKDIR /app

# 5) Copy app source
COPY . .

# 4) Install dependencies first (better caching)
RUN pip install --no-cache-dir -r requirements.txt




# 6) Expose port and run
EXPOSE 5000
CMD ["python", "app.py"]