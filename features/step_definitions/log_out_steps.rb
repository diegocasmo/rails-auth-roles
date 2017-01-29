Then(/^I should be able to log out$/) do
  HomePage.visit.verify_user_can_log_out
end
