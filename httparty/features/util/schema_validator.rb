class Schema_Validator
  def validate_json(schema_name, body)
    schema_directory = "#{Dir.pwd}/features/schemas"
    schema_path = "#{schema_directory}/#{schema_name}"
    return JSON::Validator.validate!(schema_path, body, strict: true)
  end
end
