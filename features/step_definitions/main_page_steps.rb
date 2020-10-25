Dado('que o usuário está na pagina principal') do
    @mp = MainPage.new
    @mp.open_main_page
end

Então('visualiza o texto party rock') do
    expect(@mp.assert_rock_text).to eql("Let's party rock." )
end