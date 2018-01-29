When(/^GET in available\-scheduling\-dates with the day "([^"]*)"$/) do |day|
    @days = day
end

And(/^passing starting cep "([^"]*)"$/) do |start_cep|
    @start_cep = start_cep
end

And(/^passing end cep "([^"]*)"$/) do |end_cep|
    @end_cep = end_cep
end

Then(/^Response code should be equal "([^"]*)"$/) do |code|
  @response.code.to_s.should == code
end

Then(/^I see the error message "([^"]*)"$/) do |msg|
  #binding.pry
  expect(@response.parsed_response['messages'][0]['text'].include? msg).to be true
end

And(/^json should be formated in schema "([^"]*)"$/) do |schemaName|
  body = JSON.parse(@response.body)
  expect(Schema_Validator.new.validate_json(schemaName, body)).to eq(true)
end

And(/^GET API without authentication$/) do
  @apiservices = SevicesQA.new
  @response = @apiservices.get(@days,@start_cep,@end_cep)
  Debug.new.debug(@response)
  puts @response.parsed_response
end