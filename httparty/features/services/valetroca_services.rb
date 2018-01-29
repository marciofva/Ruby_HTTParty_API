class ValeTroca

  include HTTParty

  base_uri ENVIRONMENT["valetroca"]
  format :json
  headers 'Content-Type' => 'application/x-www-form-urlencoded',
          'Accept' => 'application/json',
          'Authorization' => 'Basic U1ZDLU9TQi1DT00tUExBVEFGT1I6UiE0Y2h1M2ww'

  def initialize(authentication)
    @auth = {
        username: AUTH[ENV['ENV']][authentication]['username'],
        password: AUTH[ENV['ENV']][authentication]['password']
    }
  end

  #==================================================================================================
  # CONTRACT API
  #==================================================================================================

  def get(cpf,valetrocaID)
    self.class.get("/API/v1/consultarValeTroca?cpf=#{cpf}&codigoValeTroca=#{valetrocaID}")
  end

end