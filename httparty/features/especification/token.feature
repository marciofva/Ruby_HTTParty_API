#language:en
  Feature: POST request for creating a new token

###############################################################################
# POST: /post/api/public/v1/accesstoken?merchantid={id}
###############################################################################
@run_10_times
    Scenario: POST Status Code 201 passing a valid merchantid
      When POST in token with "BC5D3432-527F-40C6-84BF-C549285536BE"
      Then Response code should be equal "201"
      And json should be formated in schema "token_schema.json"

###############################################################################
# POST: /post/api/public/v1/accesstoken?merchantid={id}
###############################################################################
    Scenario: POST Status Code 500 passing an invalid merchantid
      When POST in token with "BC5D3432-527F-40C6-84BF-C549285512DD"
      Then Response code should be equal "500"
