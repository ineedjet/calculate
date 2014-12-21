Given(/^There is a user in the database$/) do
  @user = create :user
end

Given(/^I login as that user$/) do
  visit new_user_session_path
  fill_in :user_email, with: @user.email
  fill_in :user_password, with: @user.password
  click_button 'Log in'
end