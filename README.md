# Basic project for Rails5 app

A starter project with:

* Multi-facted search via searchkick gem 
* ActiveStorage (uploads to AWS S3, Azure Blob, etc.)
* Devise (with omniauth)
* Sidekiq for workers
* Postgres database is default

# Credentials

You must create a ...

% EDITOR=nano rails credentials:edit

# Local development

Requires postgres, elasticsearch, sidekiq and redis

% bundle exec sidekiq -c 2 -q mailers

# Heroku Deployment

Requires postgres, elasticsearch, sidekiq and redis

# Adding omniauth providers


# Adding ActiveStorage providers

