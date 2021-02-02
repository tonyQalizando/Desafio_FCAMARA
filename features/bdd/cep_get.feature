# language: pt

Funcionalidade: Pesquisa de CEP
    Para pesquisar por em gerais
    O usuário da aplicacao
    Deseja poder consultar por codigos postais brasileiros

@cenario_um
Cenario: Pesquisar por um cep valido
    Dado Que o usuario queira pesquisar um codigo postal
    Quando Ele realizar a pesquisa passando o numero do CEP
    Entao Informações sobre o local devem retornar na requisição
    E Status code deve ser 200

@cenario_dois
Cenario: Colsultar um cep e validar o codigo do IBGE
    Dado Que o usuario queira pesquisar um codigo do IBGE
    Quando Ele realizar a pesquisa pelo numero do CEP
    Entao O codigo do IBGE deve retornar na requisição
    E status code deve ser 200

@cenario_tres
Cenario: Pesquisar por um cep invalido
    Dado Que o usuario realize uma pesquisa com um CEP invalido
    Quando O sistema processar a pesquisa
    Entao Uma mensagem de erro deve retornar
    E status code sera 200