#encoding UTF-8
#language: pt

  Funcionalidade: conferir conexão com DB

    Cenario: verificar conexão com banco DbConnection reportando erro
      Dado usuário o software chamou DbConnection
      Quando chamara função verificarStatus
      Entao recebe "false" para conexão
    Cenario: verificar conexão com banco DbConnection com sucesso
      Dado usuário chamou DbConnection
      Quando chamar a função verificarStatus
      Entao recebe "true" para conexão

  Funcionalidade: validar credenciais

    Cenario: verificar as credencias do usuário
      Dado email e senha do usuário
      Quando o usuário clica em login o programa deverá fazer a validação do usuário
      Entao o programa retorna a mensagem login "válido"
    Cenario: verificação incorreta das credenciais do usuário
      Dado email e senha do usuário
      Quando o usuário clica em login o programa deverá fazer a validação do usuário
      Entao o programa retorna a mensagem "login inválido, verique as informações"

  Funcionalidade: Cadastrar usuário

    Cenario: cadastrar o usuário no banco de dados
      Dado o usuário deverá fazer o preenchimento dos seguintes dados: nome, senha, email, cpf e data de nascimento
      Quando o usuário clicar em cadastrar, os dados do usuário deverão ser inseridos no banco de dados
      Entao o programa retorna a mensagem "Cadastro realizado com sucesso"
    Cenario: cadastrar o usuário no banco de dados
      Dado o usuário deverá fazer o preenchimento dos seguintes dados: nome, senha, email, cpf e data de nascimento
      Quando o usuário clicar em cadastrar, os dados do usuário deverão ser inseridos no banco de dados
      Entao o programa retorna a mensagem "Não foi possível realizar o cadastro, verifique as informações"

  Funcionalidade: Consultar caderneta

    Cenario: cadastrar nova aplicação
      Dado o usuário deverá fazer o prenchimento dos segunites dados: nome da vacina, data de aplicação, dose, local, cidade
      Quando o usuário clicar em cadastrar nova aplicação, os dados deverão ser inseridos no banco de dados
      Entao o programa deverá retornar "Aplicação cadastrada com sucesso"
    Cenario: cadastrar nova aplicação
      Dado o usuário deverá fazer o prenchimento dos segunites dados: nome da vacina, data de aplicação, dose, local, cidade
      Quando o usuário clicar em cadastrar nova aplicação, os dados deverão ser inseridos no banco de dados
      Entao o programa deverá retornar "Não foi possível cadastrar a aplicação, verifique as informações"
    Cenario: Editar aplicação já existente
      Dado o usuário deverá digitar o nome da vacina aplicada na barra de pesquisa
      Quando o usuário clicar em pesquisar, o programa deverá retornar as informações referentes a vacina pesquisada
      Entao o programa deverá retornar os campos preenchidos para o usuário atualizar as informações desejadas e ao clicar em editar o programa deverá retornar a mensagem 'atualização feita com sucesso'
    Cenario: Editar aplicação já inexistente
      Dado o usuário deverá digitar o nome da vacina aplicada na barra de pesquisa
      Quando o usuário clicar em pesquisar, o programa deverá consultar o banco de dados se a aplicção é existente
      Entao em caso de negativa o programa deverá retornar "Aplicação não encontrada"

  Funcionalidade: Consultar pontos de localização

      Cenario: Consultar possíveis pontos de aplicação de vacinas
        Quando o usuário clicar em Consulta em UBS o programa deverá consultar o banco de dados
        Então o programa deverá retornar a lista dos pontos de aplicação
      Cenario: Falha ao comunicar com o banco de dados para ponsultar possíveis pontos de aplicação de vacinas
        Quando o usuário clicar em Consulta em UBS o programa deverá consultar o banco de dados
        Entao o programa deverá "Não foi possível fazer a a conexão"