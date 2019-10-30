require 'rspec'
require 'capybara'
require 'cucumber'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'capybara/rspec'
require 'rspec'
require 'bundler'
require 'site_prism'
require_relative 'helper.rb'
require 'dbi'
require 'tiny_tds'
require 'execjs'
require 'date'
require 'pry'
require 'yaml'


DADOS = YAML.load(File.open(File.join(File.dirname(__FILE__) + "/massa/tb.yml")))

World(PageObjects)

# Configurando o driver Capybara.
Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

# Setando a configuração do Driver como padrão.
Capybara.default_driver = :selenium

# timeout padrão na execução.
Capybara.default_max_wait_time = 15

# Maximizar a tela ao iniciar o teste.
Capybara.page.driver.browser.manage.window.maximize