# classe principal dos testes da aplicacao

class MainPage
    attr_accessor :driver
  
    # Onde e realizado o Page object da pagina para melhor manutencao
    def initialize
        @driver = $driver
        @rock_text = 'lfr-ddm-form-page-description' 
        
    end
  
    # Abre o site
    def open_main_page
      @driver.get ' https://forms.liferay.com/web/forms/shared/-/form/122548'
    end

    def assert_rock_text
        @driver.find_element(class: @rock_text).text
    end

end
