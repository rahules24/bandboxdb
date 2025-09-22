# Bandbox Database

This is the PostgreSQL database for the Bandbox application. It is hosted on Fly.io with persistent storage.

## Setup Instructions

1. Install Fly.io CLI:
   ```bash
   curl -L https://fly.io/install.sh | sh
   ```

2. Launch the database app:
   ```bash
   flyctl launch
   ```

3. Deploy the database app:
   ```bash
   flyctl deploy
   ```