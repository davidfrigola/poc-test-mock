
require 'minitest/autorun'

Given(/^the application1 is up$/) do
  response = HTTParty.get('http://localhost:3000/api')
  assert_equal 200,response.code
end

When(/^I get the list$/) do
  @last_response = HTTParty.get('http://localhost:3000/api/list')
end

Then(/^request succeeds$/) do
   assert_equal 200, @last_response.code
end
