#!/usr/bin/env bash
# exit on error
set -o errexit

bundle install
./bin/rails db:drop DISABLE_DATABASE_ENVIRONMENT_CHECK=1
./bin/rails db:create
./bin/rails db:migrate
./bin/rails db:seed