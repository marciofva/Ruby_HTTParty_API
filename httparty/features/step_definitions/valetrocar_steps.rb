When(/^GET in ValeTroca with cpf "([^"]*)"$/) do |cpf|
    @cpf = cpf
end

And(/^passing end vale troca id "([^"]*)"$/) do |valeID|
    @valeID = valeID
end

And(/^GET API with a "([^"]*)" authentication$/) do |authentication|
    @apiservices = ValeTroca.new(authentication)
    @response = @apiservices.get(@cpf,@valeID)
    Debug.new.debug(@response)
    puts @response.parsed_response
end