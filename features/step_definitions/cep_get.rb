#1
Dado('Que o usuario queira pesquisar um codigo postal') do
end
  
  Quando('Ele realizar a pesquisa passando o numero do CEP') do
    @consultar_cep = request.cep_get(FILTER[:cep][:cep1])
  end
  
  Entao('Informações sobre o local devem retornar na requisição') do
    expect(@consultar_cep.parsed_response['logradouro']).to eql 'Rua São Lourenço do Sul'
    expect(@consultar_cep.parsed_response['bairro']).to eql 'Jardim Peri'
    expect(@consultar_cep.parsed_response['localidade']).to eql 'São Paulo'
    expect(@consultar_cep.parsed_response['ddd']).to eql "11"
  end
  
  E('Status code deve ser {int}') do |int|
    expect(@consultar_cep.code).to eql (200)
  end

#2
Dado('Que o usuario queira pesquisar um codigo do IBGE') do
end
  
  Quando('Ele realizar a pesquisa pelo numero do CEP') do
    @consultar_ibge = request.cep_get(FILTER[:cep][:cep2])
    log @consultar_ibge.parsed_response['ibge']
  end
  
  Entao('O codigo do IBGE deve retornar na requisição') do
    expect(@consultar_ibge.parsed_response['ibge']).to eql "3550308"
  end
  
  E('status code deve ser {int}') do |int|
    expect(@consultar_ibge.code).to eql (200)
  end

#3
Dado('Que o usuario realize uma pesquisa com um CEP invalido') do
end
  
  Quando('O sistema processar a pesquisa') do
    @cep_invalido = request.cep_get(FILTER[:cep][:invalidCep])
  end
  
  Entao('Uma mensagem de erro deve retornar') do
    expect(@cep_invalido.parsed_response['erro']).to eql true
  end
  
  E('status code sera {int}') do |int|
    expect(@cep_invalido.code).to eql (200)
  end