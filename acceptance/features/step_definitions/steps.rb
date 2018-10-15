
require 'minitest/autorun'

Given(/^the application1 is up$/) do
  response = HTTParty.get('http://localhost:3000/api')
  assert_equal 200,response.code
end

Given(/^the application2 is up$/) do
  response = HTTParty.get('http://localhost:3001/api')
  assert_equal 200,response.code
end

When(/^I get the list from application1$/) do
  @last_response = HTTParty.get('http://localhost:3000/api/list')
end

When(/^I get the list from application2$/) do
  @last_response = HTTParty.get('http://localhost:3001/api/list')
end

Then(/^request succeeds$/) do
   assert_equal 200, @last_response.code
end
