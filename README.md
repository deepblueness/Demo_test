# Freeletics Test

The project consiste of 7 tests that check the presence and the content of a specific Job detail Page at Freeletics. 

## Setup

1. Clone the repo
2. Bundle install in the project directory
3. Run the tests by executing: bundle exec rspec job_page_spec.rb
4. Enjoy yourself watching it run, getting greener by the second :)

# What's inside

The test use RSpec/Capybara to control a headless browser (Chrome). The application under test is the live freeletics webpage : 'https://www.freeletics.com'. This can be ealisy updated. 

The project uses the Page Object Model (POM) pattern for readability and mantainability. All page objects files can be found in the /page_objects directory. They are implemented using SitePrism https://github.com/natritmeyer/site_prism 

# Improvements

As of now, each test navigates to the job page and then asserts for a specific element on the page as follows: job title, location, description, responsibilities section profile section and the apply button. In order to lower the execution time, I would recommend extracting the navigation test and loading the job_page directly. This way we would use the advantage of the POM to separate the test logic from the navigation logic. It would make the job_page test shorter and more readable. Also, since the current implementation already allows for a specific job_uuid, we could easily extend the test for other job pages, eg. the Scrum Master one.
