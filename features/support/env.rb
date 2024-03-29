require 'rspec'
require 'cucumber'
require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'

Capybara.register_driver :selenium do |app|
	Capybara::Selenium::Driver.new(app, :browser => :firefox)
end

Capybara.default_driver = :selenium

Capybara.default_max_wait_time = 5

Capybara.page.driver.browser.manage.window.maximize
