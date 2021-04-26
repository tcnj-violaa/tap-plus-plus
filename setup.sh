#!/bin/bash

set -o verbose

./vendor/bin/sail up -d
./vendor/bin/sail php artisan migrate:fresh --seed

exit 0

