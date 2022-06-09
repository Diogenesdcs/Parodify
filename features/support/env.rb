require "allure-cucumber"
require "capybara"
require "capybara/cucumber"

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.default_max_wait_time = 10
  config.app_host = "http://parodify.herokuapp.com"
end

AllureCucumber.configure do |config| #configuração para limpeza de logs do allure
  config.results_directory = "/logs"
  config.clean_results_directory = true
end
