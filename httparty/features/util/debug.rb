require 'json'

class Debug 

  def debug(response)
    puts '================'
    puts "\n"
    puts 'HTTP REQUEST:'
    puts "\t HTTP Request  method: #{response.request.http_method}"
    puts "\t HTTP Request  path  : #{response.request.last_uri}"
    puts "\t HTTP Request  header: #{response.request.options[:headers]}"
    puts "\t HTTP Request  body  : "
    puts response.request.raw_body.to_s
    puts "\n"
    puts 'HTTP RESPONSE:'
    puts "\t HTTP Response code  : #{response.code}"
    puts "\t HTTP Response  body  : #{response.body.to_s}"
    
    puts "\t HTTP Response  header  : "
    
    # puts "\t\t\t response.headers[api_key] #{response.headers['api_key']}"
    puts "\t\t\t response.headers[content-type] #{response.headers['content-type']}"
    # puts "\t\t\t response.headers[x-application-context] #{response.headers['x-application-context']}"

    puts "\n"
    puts '================'
  end

  def debug_msg(string)
    puts "#{string}\n"
  end

end
