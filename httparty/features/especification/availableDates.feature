#language:en
  Feature: GET request for available scheduling dates

###############################################################################
# GET: /api/v1/quote/available_scheduling_dates/{days}/{start_CEP}/{end_CEP}
###############################################################################
    Scenario: GET Status Code 200 passing all valid data
      When GET in available-scheduling-dates with the day "166"
      And passing starting cep "04012090"
      And passing end cep "04037003"
      And GET API without authentication
      Then Response code should be equal "200"
      And json should be formated in schema "availableDates_schema.json"


###############################################################################
# GET: /api/v1/quote/available_scheduling_dates/{days}/{start_CEP}/{end_CEP}
###############################################################################
    Scenario: GET Status Code 200 passing all valid data
      When GET in available-scheduling-dates with the day "166"
      And passing starting cep "16980000"
      And passing end cep "04014000"
      And GET API without authentication
      Then Response code should be equal "200"
      And json should be formated in schema "availableDates_schema.json"


###############################################################################
# GET: /api/v1/quote/available_scheduling_dates/{days}/{start_CEP}/{end_CEP}
###############################################################################
    Scenario: GET Status Code 500 passing alphanumeric value in the parameter day
      When GET in available-scheduling-dates with the day "9h"
      And passing starting cep "16980000"
      And passing end cep "04014000"
      And GET API without authentication
      Then Response code should be equal "500"
      Then I see the error message "Sorry, an internal error has occurred. If you need support then please send an email to support@intelipost.com.br and provide this errorCode"

###############################################################################
# GET: /api/v1/quote/available_scheduling_dates/{days}/{start_CEP}/{end_CEP}
###############################################################################
    Scenario: GET Status Code 500 passing alphanumeric value in the parameter starting CEP
      When GET in available-scheduling-dates with the day "89'"
      And passing starting cep "16980dqa"
      And passing end cep "04014000"
      And GET API without authentication
      Then Response code should be equal "500"
      Then I see the error message "Sorry, an internal error has occurred. If you need support then please send an email to support@intelipost.com.br and provide this errorCode"

###############################################################################
# GET: /api/v1/quote/available_scheduling_dates/{days}/{start_CEP}/{end_CEP}
###############################################################################
    Scenario: GET Status Code 500 passing alphanumeric value in the parameter end CEP
      When GET in available-scheduling-dates with the day "9h"
      And passing starting cep "16980000"
      And passing end cep "040DH000"
      And GET API without authentication
      Then Response code should be equal "500"
      Then I see the error message "Sorry, an internal error has occurred. If you need support then please send an email to support@intelipost.com.br and provide this errorCode"
