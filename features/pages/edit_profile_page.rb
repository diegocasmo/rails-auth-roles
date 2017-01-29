# Represents the edit profile page
require 'rspec/expectations'

class EditProfilePage
  extend Capybara::DSL
  extend RSpec::Matchers

  def self.visit
    Capybara.visit('/users/edit')
    self
  end

  def self.edit_password(new_password, curr_password)
    fill_in('Password', with: new_password)
    fill_in('Password confirmation', with: new_password)
    fill_in('Current password', with: curr_password)
    click_button('Update')
  end

  def self.verify_successful_profile_change
    expect(URI.parse(current_url).path).to eq('/')
    expect(page).to have_selector('.alert.alert-info')
  end
end
