When(/^I visit the Google homepage$/) do
  visit 'http://google.com'
  grab_screen 'should see something Googley'
end

Then(/^I should see something Googley$/) do
  page.should have_content('Google')
  page.should have_content('Search')
end

