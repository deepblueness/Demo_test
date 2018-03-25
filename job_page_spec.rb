# frozen_string_literal: true

require 'byebug'
require_relative 'spec_helper'

describe 'A job posting', type: :feature, js: true do
  let(:home_page) { SitePrism::Page::LandingPage.new }
  let(:job_uuid) { '65e7cf41-2b3b-48b4-a39e-0c4c04f29c1d' }

  before do
    home_page.load
    job_overview = home_page.navigate_to_jobs_overview
    job_list = job_overview.navigate_to_jobs_list
    @job_page = job_list.navigate_to_job_page
  end
  
  context 'as a potential aplplicant' do
    it 'displays the job title' do
      @job_page.wait_for_job_title
      expect(@job_page.job_title).to have_content('Lead QA Engineer (m/f)')
    end
    it 'displays the job location' do
      expect(@job_page.job_location).to have_content('Munich')
    end
    it 'displays the job description' do
      expect(@job_page.job_description).to be_visible
      expect(@job_page.job_description).to have_content('Are you passionate about building QA team')
    end
    it 'displays the your responsibilities section' do
      expect(@job_page.your_responsibilities).to be_visible
      expect(@job_page.your_responsibilities_element.count).to eq(8)
    end
    it 'displays the your profile section' do
      expect(@job_page.your_profile).to be_visible
      expect(@job_page.your_profile_element.count).to eq(7)
    end
    it 'displays the apply button' do
      @job_page.wait_for_apply_button
      expect(@job_page).to have_apply_button
    end
    it 'navigates to the apply page' do
      apply_page = @job_page.navigate_to_apply_page
      expect(apply_page).to have_submit_title
    end
  end
end
