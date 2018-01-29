class SevicesQA

  include HTTParty

  base_uri ENVIRONMENT["server"]
  format :json
  headers 'Content-Type' => 'application/json',
          'Accept' => 'application/json',
          'api_key' => 'bff00a8469651e0d89d07eb559af877dcc1818f0df345943339a0b59d0c955dc'

  #==================================================================================================
  # CONTRACT API
  #==================================================================================================

  def get(days,start_cep,end_cep)
    self.class.get("/api/v1/quote/available_scheduling_dates/#{days}/#{start_cep}/#{end_cep}")
  end

end