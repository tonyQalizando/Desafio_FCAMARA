module URL
    include HTTParty
    base_uri 'https://viacep.com.br/ws'
    default_options.update(verify: false)
    format :json 
    headers 'Content-Type': 'application/json; charset=utf-8' 
end
