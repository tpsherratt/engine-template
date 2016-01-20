#!/bin/bash

# weird escapes print as bold
printf "\n\n\n\033[1m***** RUNNING engine_template SPECS *******\033[00m\n"

bundle install | grep Installing
bundle exec rake db:create db:migrate #don't remove this line. If only run in test our schema.rb doesn't include required engine's migrations
RAILS_ENV=test bundle exec rake db:create db:migrate

bundle exec rspec spec

exit $?
