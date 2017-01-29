# Represents the login page
require 'rspec/expectations'

class LogInPage
  extend Capybara::DSL
  extend RSpec::Matchers

  def self.visit
    Capybara.visit('/users/sign_in')
    self
  end

  def self.log_in(email, password)
    fill_in('Email', with: email)
    fill_in('Password', with: password)
    click_button('Log in')
  end

  def self.verify_confirm_email_instructions
    expect(page.find('.alert.alert-warning').text()).to eq(I18n.t('devise.failure.unconfirmed'))
  end

  def self.verify_unsuccessful_log_in
    expect(URI.parse(current_url).path).to eq('/users/sign_in')
    expect(page).to have_selector('.alert.alert-warning')
  end
end
