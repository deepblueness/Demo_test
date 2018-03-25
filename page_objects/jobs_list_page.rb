# frozen_string_literal: true

require_relative '../spec_helper'

class JobsList < SitePrism::Page
  set_url 'http://www.freeletics.com/de/corporate/jobs'
  element :chosen_positions_button, '#engineering li', text: 'Lead QA Engineer (m/f)'

  def navigate_to_job_page
    chosen_positions_button.click
    JobPage.new
  end
end
