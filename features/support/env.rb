require 'selenium-webdriver'
require 'cucumber'

Before do
    $driver = Selenium::WebDriver.for :chrome
end

After do
    $driver.quit
end
