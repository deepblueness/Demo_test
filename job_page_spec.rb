# frozen_string_literal: true

require_relative 'spec_helper'

describe 'A job posting', type: :feature, js: true do
  let(:page) { SitePrism::Page::JobPage.new }
  let(:home_page) { SitePrism::Page::LandingPage.new }
  let(:job_uuid) { '65e7cf41-2b3b-48b4-a39e-0c4c04f29c1d' }
  
  it 'navigates from landing to overview' do
    # TODO: move this to a before statemenet when it's complete
    home_page.load
    job_overview = home_page.navigate_to_jobs_overview
  end
  it 'displays the job title' do
    page.load(job_uuid: job_uuid)
    page.wait_for_job_title
    expect(page.job_title).to have_content('Lead QA Engineer (m/f)')
  end
  it 'displays the job location' do
    page.load(job_uuid: job_uuid)
    page.wait_for_job_location
    expect(page.job_location).to have_content('Munich')
  end
  it 'displays the job description' do
    page.load(job_uuid: job_uuid)
    expect(page.job_description).to be_visible
    expect(page.job_description).to have_content('Are you passionate about building QA team')
  end
  it 'displays the your responsibilities section' do
    page.load(job_uuid: job_uuid)
    expect(page.your_responsibilities).to be_visible
    expect(page.your_responsibilities_element.count).to eq(8)
  end
  it 'displays the your profile section' do
    page.load(job_uuid: job_uuid)
    expect(page.your_profile).to be_visible
    expect(page.your_profile_element.count).to eq(7)
  end
  it 'displays the apply button' do
    page.load(job_uuid: job_uuid)
    page.wait_for_apply_button
    expect(page).to have_apply_button 
    apply_page = page.navigate_to_apply_page
    expect(apply_page).to have_submit_title
  end
end
