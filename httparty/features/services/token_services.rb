class TokenAcess
  include HTTParty

  base_uri ENVIRONMENT["homolog"]
  format :json
  headers 'Content-Type' => 'application/json',
          'Accept' => 'application/json'

  #==================================================================================================
  # CONTRACT API
  #==================================================================================================

  def post(merchantid, body)
      self.class.post("/post/api/public/v1/accesstoken?merchantid=#{merchantid}", :body => body)
  end
end