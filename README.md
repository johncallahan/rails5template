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

HOST_FOR_EMAIL
SENDGRID_USERNAME
SENDGRID_PASSWORD

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


