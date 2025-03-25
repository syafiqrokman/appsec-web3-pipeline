#!/bin/bash
# Run TruffleHog to check for secrets in the repo
trufflehog filesystem . --json
