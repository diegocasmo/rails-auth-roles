Then(/^I should be able to edit my password$/) do
  EditProfilePage.visit.edit_password('123123', 'password')
  EditProfilePage.verify_successful_profile_change
end
