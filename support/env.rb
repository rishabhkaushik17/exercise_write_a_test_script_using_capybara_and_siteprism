require 'capybara/cucumber'
require 'selenium-webdriver'
require 'rspec'
require 'capybara'
require 'site_prism'

Capybara.default_driver = :selenium_chrome
Capybara.default_selector = :css
Capybara.default_max_wait_time = 10

