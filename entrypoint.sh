#!/bin/bash

# Prepare the data directory by removing lost+found and ensuring ownership
if [ -d /data/lost+found ]; then
  rm -rf /data/lost+found
fi

mkdir -p /data
chown -R postgres:postgres /data

# Execute the original PostgreSQL entrypoint
exec docker-entrypoint.sh "$@"