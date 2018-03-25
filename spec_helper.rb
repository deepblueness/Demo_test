# frozen_string_literal: true

require 'capybara'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'site_prism'

require_relative './page_objects/job_page.rb'
require_relative './page_objects/apply_page.rb'
require_relative './page_objects/jobs_list_page.rb'
require_relative './page_objects/jobs_overview_page.rb'
require_relative './page_objects/landing_page.rb'
require_relative './page_objects/apply_page.rb'

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

Capybara.register_driver :headless_chrome do |app|
  capabilities = Selenium::WebDriver::Remote::Capabilities.chrome(
    chromeOptions: { args: %w[headless disable-gpu] }
  )

  Capybara::Selenium::Driver.new app,
                                 browser: :chrome,
                                 desired_capabilities: capabilities
end

Capybara.javascript_driver = :headless_chrome
