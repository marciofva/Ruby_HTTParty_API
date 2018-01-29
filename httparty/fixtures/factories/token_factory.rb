class TokenSection

  def self.getTemplate
    template = YAML.load_file('./fixtures/templates/token.yml')['token_valid_data'].dup
    return template
  end

end