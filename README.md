# Intercom.io Mail Gateway

Take inbound requests from Mailgun and create or update threads in Intercom.io based on those requests.

## Installation

Get the app and do this:

    gem install bundler
    bundle install

## Deployment on Heroku

To install into Heroku, do this:

    heroku create appname
    heroku config:add INTERCOM_APP_ID=app-id
    heroku config:add INTERCOM_APP_KEY=app-key
    git push heroku master

## Setup at mailgun

Set up your domain on Mailgun (along with the MX records Mailgun needs) and create a route that looks like this (replace xyz123 with the app id from intercom.io.

    Filter Expression: match_recipient("support@your-app.com")
    Actions: forward("http://your-app.heroku.com/xyz123/messages")
