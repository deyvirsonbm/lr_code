# classe principal dos testes da aplicacao
require 'faker'

class MainPage
    attr_accessor :driver
  
    # Onde e realizado o Page object da pagina para melhor manutencao
    def initialize
        @driver = $driver
        @rock_text = 'lfr-ddm-form-page-description' 
        @submit_button = '/html/body/div[1]/div/div/div/div/div/div/form/div[3]/div/div/div/div[2]/button'
        @alert_name_error = '/html/body/div[1]/div/div/div/div/div/div/form/div[3]/div/div/div/div[1]/div/div/div[1]/div[1]/div/div/div'
        @name_field = '/html/body/div[1]/div/div/div/div/div/div/form/div[3]/div/div/div/div[1]/div/div/div[1]/div[1]/div/input'
        @data_field = '/html/body/div[1]/div/div/div/div/div/div/form/div[3]/div/div/div/div[1]/div/div/div[1]/div[2]/div/div/div[1]/input[1]'
        @explanation_field = '/html/body/div[1]/div/div/div/div/div/div/form/div[3]/div/div/div/div[1]/div/div/div[2]/div/div/textarea' 
        @calendar_icon = '/html/body/div[1]/div/div/div/div/div/div/form/div[3]/div/div/div/div[1]/div/div/div[1]/div[2]/div/div[1]/div[1]/div/button' 
        @current_day = '/html/body/div[1]/div/div/div/div/div/div/form/div[3]/div/div/div/div[1]/div/div/div[1]/div[2]/div/div/div[2]/div/div[3]/div[5]/div[1]'
        @success_message = '/html/body/div[1]/div/div/div/div/div/div/div/div/h5'
        @language_button = '/html/body/div[1]/div/div/div/div/div/div/form/div[1]/div/div/div/button/span[2]' 
        @portuguese_button = '//*[@id="_com_liferay_dynamic_data_mapping_form_web_portlet_DDMFormPortlet_kldx______menu__portugues_2d_brasil__1"]/span[2]' 
        @portuguese_text = 'lfr-ddm-form-page-title' 
    end
  
    # Abre o site
    def open_main_page
      @driver.get ' https://forms.liferay.com/web/forms/shared/-/form/122548'
    end

    #assertion que esta na home
    def assert_rock_text
        @driver.find_element(class: @rock_text).text
    end

    # clica no botao de submit
    def click_submit_button
        @driver.find_element(xpath: @submit_button).click
    end

    # pega o alert de erro do campo de nome
    def alert_name_error
        @driver.find_element(xpath: @alert_name_error).text
    end

    # inserir nome no campo de nome
    def insert_name
        @driver.find_element(xpath: @name_field).click
        @driver.find_element(xpath: @name_field).send_keys(Faker::Name.name)
        sleep 2
    end

    # seleciona imagem de calendario e seleleciona data corrente
    def insert_data
        @driver.find_element(xpath: @calendar_icon).click
        @driver.find_element(xpath: @current_day).click
        sleep 2
    end

    # inserir um texto gerado aleatoriarimanete no campo de explicacao
    def explanation_field
        @driver.find_element(xpath: @explanation_field).send_keys(Faker::TvShows::BigBangTheory.quote)
        sleep 2
    end

    # faz o assertion da tela de sucesso
    def assert_success_screen
        @driver.find_element(xpath: @success_message).text
    end

    # clica no botao de internacionalizacao
    def language_button
        @driver.find_element(xpath: @language_button).click
    end

    # seleciona o idioma portugues
    def portuguese_button
        @driver.find_element(xpath: @portuguese_button).click
    end

    # faz o assertion do texto em portugues
    def assert_portuguese_text
        @driver.find_element(class: @portuguese_text).text
    end
end