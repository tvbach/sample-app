set -o errexit

bundle install --without production
bundle exec rails assets:precompile
bundle exec rails assets:clean
bundle exec rails db:create
rails active_storage:update
bundle exec rails db:migrate
bundle exec rails db:seed
