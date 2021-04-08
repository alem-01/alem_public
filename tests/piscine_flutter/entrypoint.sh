#!/bin/bash

set -e

cd /app && dart run "/app/${EXERCISE}_test.dart"
