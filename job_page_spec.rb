# frozen_string_literal: true

require_relative './page_objects/job_page.rb'

describe 'A job posting', type: :feature, js: true do
  let(:page) { SitePrism::Page::JobPage.new }

  it 'displays the job title' do
    page.load
    page.wait_for_job_title
    expect(page.job_title).to have_content('Lead QA Engineer (m/f)')
  end
  it 'displays the job location' do
    page.load
    page.wait_for_job_location
    expect(page.job_location).to have_content('Munich')
  end
  it 'displays the job description' do
    page.load
    page.wait_for_job_description
    expect(page.job_description).to be_visible
    expect(page.job_description).to have_content('Are you passionate about building QA team')
  end
  it 'displays the your responsibilities section' do
    page.load
    expect(page.your_responsibilities).to be_visible
    expect(page.your_responsibilities_element.count).to eq(8)
  end
  it 'displays the your profile section' do
    page.load
    expect(page.your_profile).to be_visible
    expect(page.your_profile_element.count).to eq(7)
  end
end
