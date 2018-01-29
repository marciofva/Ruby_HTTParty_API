#language:en
  Feature: GET request for

###############################################################################
# GET: /API/v1/consultarValeTroca?cpf={cpfNumber}&codigoValeTroca={id}
###############################################################################
    Scenario: GET Status Code 200 passing all valid data
      When GET in ValeTroca with cpf "32183616806"
      And passing end vale troca id "1709184000000005"
      And GET API with a "valid" authentication
      Then Response code should be equal "200"
      And json should be formated in schema "valetroca_schema.json"