#!/bin/bash

set -e

file_count=`ls -l /var/www/html 2>/dev/null | sed /^total/d | wc -l`
if [ "${file_count}" != 0 ]
then
	echo "skipping create phase"
else
	echo "create laravel project"
	composer create-project laravel/laravel=${LARAVEL_VERSION} .  --prefer-dist
fi

exec "$@"

