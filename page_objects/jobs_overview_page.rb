# frozen_string_literal: true

require_relative '../spec_helper'

class JobsOverview < SitePrism::Page
  set_url 'http://www.freeletics.com/de/corporate'
  element :open_positions_button, '[href="/de/corporate/jobs"]'

  def navigate_to_jobs_list
    open_positions_button.click
    JobsList.new
  end
end
