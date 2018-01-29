When(/^POST in token with "([^"]*)"$/) do |merchantid|
  @tokenJson = TokenSection.getTemplate

  @apiservices = TokenAcess.new
  @response = @apiservices.post(merchantid, @tokenJson)
  Debug.new.debug(@response)
end

