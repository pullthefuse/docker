#!/bin/sh

git clone "https://github.com/pullthefuse/dockersetup.git" "/tmp";

cd /tmp;

composer install --no-dev;

exec "$@"

