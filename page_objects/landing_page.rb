# frozen_string_literal: true

require_relative '../spec_helper'

class LandingPage < SitePrism::Page
  set_url 'http://www.freeletics.com'
  element :careers_button, '[translate="NAV_CAREERS"]'

  def navigate_to_jobs_overview
    careers_button.click
    JobsOverview.new
  end
end
