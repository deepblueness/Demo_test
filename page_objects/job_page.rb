# frozen_string_literal: true

require_relative '../spec_helper'
class JobPage < SitePrism::Page
  set_url 'http://www.freeletics.com/de/corporate/jobs/{job_uuid}'
  element :job_title, '[itemprop="title"]'
  element :job_location, '[itemprop="jobLocation"]'
  element :job_description, '[itemprop="description"]'

  element :your_responsibilities, 'section:nth-of-type(1)'
  elements :your_responsibilities_element, 'section:nth-of-type(1) li'

  element :your_profile, 'section:nth-of-type(2) '
  elements :your_profile_element, 'section:nth-of-type(2) li'

  element :apply_button, '.corporate-call-to-action a.btn-primary'
end
