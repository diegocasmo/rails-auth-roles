Given(/^I create and verify an account$/) do
  user = FactoryGirl.build(:user)
  Support::User.verify_user_account(user)
  SignUpPage.visit.sign_up(user.email, user.password)
end

Given(/^I create an unverified account$/) do
  user = FactoryGirl.build(:user)
  SignUpPage.visit.sign_up(user.email, user.password)
end

Given(/^I have not created an account$/) do
  SignUpPage.visit
end

Given(/^I try to create an account with an invalid email$/) do
  user = FactoryGirl.build(:user, email: 'foo')
  SignUpPage.visit.sign_up(user.email, user.password)
end

Given(/^I try to create an account with an invalid password$/) do
  user = FactoryGirl.build(:user, password: ' ')
  SignUpPage.visit.sign_up(user.email, user.password)
end

Then(/^I should be able to see the confirmation instructions$/) do
  LogInPage.visit.log_in(User.first.email, 'password')
  LogInPage.verify_confirm_email_instructions
end

Then(/^I should not be able to sign up$/) do
  SignUpPage.verify_error_on_create
end
