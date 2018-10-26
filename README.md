# poc-test-mock
Testing mock approach on testing

# Start applications locally

## Application1
Build using `npm install`
From `./rest-api-1` use `npm start`

## Application2
Build using `npm install`
From `./rest-api-2` use `PORT=3001 npm start`

# ATs
Install ATs dependencies using `bundle install`

Launch ATs locally from `./acceptance` using `sh cuke.sh`

# Using containers

This requires docker and docker-compose

Use `docker-compose build app1 app2` to generate both application containers

Use `docker-compose up -d` to start both application containers
