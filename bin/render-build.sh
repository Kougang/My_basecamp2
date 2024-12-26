set -e

# Installer les gems
bundle install --without development test

# Compiler les assets
bundle exec rails assets:precompile

# Nettoyer les anciens assets
bundle exec rails assets:clean
