Given(/^I have logged in$/) do
  user = User.first || FactoryGirl.create(:user)
  Support::User.verify_user_account(user)
  LogInPage.visit.log_in(user.email, 'password')
end

Then(/^I should be able to log in$/) do
  LogInPage.visit.log_in(User.first.email, 'password')
  HomePage.verify_successful_log_in
end

Then(/^I should not be able to log in$/) do
  user = User.first || FactoryGirl.build(:user)
  LogInPage.visit.log_in(user.email, 'password')
  LogInPage.verify_unsuccessful_log_in
end
