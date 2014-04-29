When(/^I access the manifest url$/) do
  visit "/serverinfo/manifest"
end

When(/^I access the manifest url with optional "(.*?)" property$/) do |arg|
  visit "/serverinfo/manifest/#{arg}"
end

Then(/^I should see many manifest properties$/) do
  page.should have_content('Build-Tag')
  page.should have_content('Built-By')
  page.should have_content('Created-By')
  page.should have_content('Manifest-Version')
  page.should have_content('Ant-Version')
end

Then(/^I should see only the "(.*)" manifest property and not the "(.*)" property$/) do |arg1, arg2|
  page.should have_content(arg1)
  page.should_not have_content(arg2)
end
