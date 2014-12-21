When(/^I click on the '(\S+)' link$/) do |link|
  click_link link
end

Then(/^I should see '(\S+)' input field$/) do |field|
  find_field field
end
