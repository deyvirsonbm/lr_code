# language: pt

Funcionalidade: Desafio Liferay

Cenário: Validar que o texto "party rock" deve esta sendo exibido
    Dado que o usuário está na pagina principal
    Então visualiza o texto party rock

Cenário: Validar que o campo nome deve ser obrigatorio
    Dado que o usuário está na pagina principal
    Quando tocar no botao de submit
    Então visualiza o alerta de erro do campo nome

Cenário: Enviar formulario com sucesso
    Dado que o usuário está na pagina principal
    Quando preencher todos os campos corretamente
    E tocar no botao de submit
    Então visualiza a tela de sucesso


