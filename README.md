# poc-test-mock
Testing mock approach on testing

[![Build Status](https://travis-ci.org/davidfrigola/poc-test-mock.svg?branch=master)](https://travis-ci.org/davidfrigola/poc-test-mock)
[![Waffle.io - Columns and their card count](https://badge.waffle.io/davidfrigola/poc-test-mock.svg?columns=all)](https://waffle.io/davidfrigola/poc-test-mock)

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

# Mocks

## Wiremock

A script is provided to download wiremock standalone JAR. The JAR will be used for all defined strategies

### Simple

Provides a set of mappings under `/mock/wiremock/simple`
This is a "big-bang" strategy, setting all required mocks before starting the ATs.


### Empty

Provides an empty set of mappings (only `/api` provided) so can be used in an ATs strategy providing mocks for each scenario.


## TODO

Other mock frameworks and strategies TBD
