#!/bin/sh

docker run -d -p 5432:5432 \
  -v /hba.conf:/var/lib/postgresql/data/pg_hba.conf
  --env POSTGRES_DB=pqgotest \
  --health-cmd pg_isready \
  --health-interval 10s \
  --health-timeout 5s \
  --health-retries 5 \
  postgres:$1
