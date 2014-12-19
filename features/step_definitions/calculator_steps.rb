When(/^I navigate to the root page$/) do
  visit '/'
end

Then(/^I should see '(\S+)' button$/) do |name|
  find_button name
end