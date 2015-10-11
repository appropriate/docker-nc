#!/bin/sh
set -e

# Prepend "nc" if the first argument is not an executable
if ! type -- "$1" &> /dev/null; then
	set -- nc "$@"
fi

exec "$@"
