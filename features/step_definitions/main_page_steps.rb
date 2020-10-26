Dado('que o usuário está na pagina principal') do
    @mp = MainPage.new
    @mp.open_main_page
end

Então('visualiza o texto party rock') do
    expect(@mp.assert_rock_text).to eql("Let's party rock." )
end

Quando('tocar no botao de submit') do
    @mp.click_submit_button
end

Então('visualiza o alerta de erro do campo nome') do
    sleep 1
    raise 'Não exibiu alerta de Erro' if @mp.alert_name_error != "This field is required."
end

Quando('preencher todos os campos corretamente') do
    @mp.insert_name
    @mp.insert_data
    @mp.explanation_field
end

Então('visualiza a tela de sucesso') do
    sleep 4
    expect(@mp.assert_success_screen).to eql("Information sent successfully!" )
end

Quando('tocar no botao de idioma') do
    @mp.language_button
    sleep 1
end

Quando('selecionar portugues') do
    @mp.portuguese_button
end

Então('visualiza a tela do formulario com texto em portugues') do
    sleep 2
    expect(@mp.assert_portuguese_text).to eql("Está é a primeira página de nosso forms.")
end