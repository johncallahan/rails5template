# Basic project for Rails5 app

A starter project with:

* Multi-facted search via searchkick gem 
* ActiveStorage (uploads to AWS S3, Azure Blob, etc.)
* Devise (with omniauth)
* Sidekiq for workers
* Postgres database is default

# First, credentials

You must create a ...

% EDITOR=nano rails credentials:edit

# Getting started - local development

Requires postgres, elasticsearch, sidekiq and redis

configure mailcatcher

% rake db:drop
% rake db:create
% rake db:migrate
% rake db:seed
% rake searchkick:reindex:all

% bundle exec sidekiq -c 2 -q mailers

# Heroku Deployment - need Heroku button

Requires postgres, elasticsearch, sendgrid and redis

% heroku create
% heroku addons:create heroku-postgresql:hobby-dev
% heroku addons:create heroku-redis:hobby-dev
% heroku addons:create sendgrid:starter
% heroku addons:create bonsai:sandbox-6
% heroku config:set RAILS_MASTER_KEY=????

HOST_FOR_EMAIL

Make sure ...

SENDGRID_USERNAME
SENDGRID_PASSWORD

copy BONSAI_URL to ELASTICSEARCH_URL

% git push heroku master
% heroku run rake db:migrate
% heroku run rake db:seed (maybe errors )
% heroku run rake searchkick:reindex:all

Sign-up a user



# Adding omniauth providers


# Adding ActiveStorage providers


# Admin users

http://localhost:3000/admin

admin boolean on user in database

# Cleaning up redis

% rails c
Running via Spring preloader in process 91027
Loading development environment (Rails 5.2.1)
2.5.1 :001 > Sidekiq.redis {|c| c.flushdb }
 => "OK" 
2.5.1 :002 > quit
% 


