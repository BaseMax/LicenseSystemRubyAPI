# License System Ruby Rails API

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## Deploy

```
$ heroku plugins:install heroku-builds
$ heroku builds:cancel -a basemaxrubytest
$ heroku config:set -a basemaxrubytest DB_HOST=xxx DB_PORT=3306 DB_USERNAME=license_service DB_PASSWORD=xxx
$ heroku restart -a basemaxrubytest
```

#### Known problems

- `An automatic deployment for basemaxrubytest failed. The build failed with the message Your account has reached its concurrent builds limit.`

List of all builds:
```
heroku builds -a basemaxrubytest
```

Stop and kill last running process:
```
heroku builds:cancel -a basemaxrubytest
```
