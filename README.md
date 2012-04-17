# Intercom.io Mail Gateway

Take inbound requests from Mailgun and create or update threads in Intercom.io based on those requests.

## Installation

Get the app and do this:

    gem install bundler
    bundle install

## Deployment on Heroku

    heroku create appname
    heroku config:add INTERCOM_APP_ID=app-id
    heroku config:add INTERCOM_APP_KEY=app-key
    git push heroku master
