When(/^I navigate to the root page$/) do
  visit '/'
end

Then(/^I should see '(\S+)' button$/) do |name|
  find_button name
end

Given(/^I should (not )?see '(\d+)'$/) do |term, text|
  expect(page).not_to have_content text
end

When(/^I enter '(.+)' into the input field$/) do |equation|
  pending # express the regexp above with the code you wish you had
end

When(/^I click '(\S+)' button$/) do |title|
  pending # express the regexp above with the code you wish you had
end
