Dado('que o usuário está na pagina principal') do
    @mp = MainPage.new
    @mp.open_main_page
end