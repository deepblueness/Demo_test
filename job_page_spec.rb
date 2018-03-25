# frozen_string_literal: true

require_relative './page_objects/job_page.rb'

describe 'A job posting', type: :feature, js: true do
  let(:page) { SitePrism::Page::JobPage.new }

  it 'displays the job title' do
    page.load
    page.wait_for_job_title
    expect(page.job_title).to have_content('Lead QA Engineer (m/f)')
  end
end
