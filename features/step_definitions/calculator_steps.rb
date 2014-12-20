When(/^I navigate to the root page$/) do
  visit '/'
end

Then(/^I should see '(\S+)' button$/) do |name|
  find_button name
end

Given(/^I should (not )?see '(.+)'$/) do |term, text|
  if term 
    expect(page).not_to have_content text
  else
    expect(page).to have_content text
  end
end

When(/^I enter '(.+)' into the '(\S+)' input field$/) do |equation, field|
  fill_in field, with: equation
end

When(/^I click '(\S+)' button$/) do |title|
  click_button title
end
