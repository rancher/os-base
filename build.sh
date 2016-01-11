#!/bin/bash
set -e

cd $(dirname $0)

dapper ./scripts/ci

ls -lh dist/artifacts
