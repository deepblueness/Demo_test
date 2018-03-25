require 'capybara'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'site_prism'
Capybara.default_driver = :selenium

require_relative './page_objects/job_page.rb'
require_relative './page_objects/apply_page.rb'
require_relative './page_objects/jobs_list_page.rb'
require_relative './page_objects/jobs_overview_page.rb'
require_relative './page_objects/landing_page.rb'
require_relative './page_objects/apply_page.rb'
