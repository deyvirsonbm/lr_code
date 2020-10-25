# classe principal dos testes da aplicacao

class mainPage
    attr_accessor :driver
  
    # Onde e realizado o Page object da pagina para melhor manutencao
    def initialize
      @driver = $driver
     
    end
  
    # Abre o site
    def open_main_page
      @driver.get ' https://forms.liferay.com/web/forms/shared/-/form/122548'
    end

end
