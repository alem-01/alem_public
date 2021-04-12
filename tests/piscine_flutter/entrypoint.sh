#!/bin/bash

set -e

cd /app && dart run "/app/${EXERCISE}_test.dart" | sed -r "s/\x1B\[([0-9]{1,3}(;[0-9]{1,2})?)?[mGK]//g"

exit ${PIPESTATUS[0]}
