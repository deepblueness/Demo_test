
# frozen_string_literal: true

require_relative '../spec_helper'

class ApplyPage < SitePrism::Page
  set_url 'http://jobs.lever.co/freeletics/{job_uuid}/apply'
  element :submit_title, 'h4'
end
