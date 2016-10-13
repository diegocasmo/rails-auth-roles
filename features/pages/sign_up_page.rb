# Represents sign up page
require 'rspec/expectations'

class SignUpPage
  extend Capybara::DSL
  extend RSpec::Matchers

  def self.visit
    Capybara.visit('/users/sign_up')
    self
  end

  def self.sign_up(email, password)
    fill_in('Email', with: email)
    fill_in('Password', with: password)
    fill_in('Password confirmation', with: password)
    click_button('Sign up')
  end

  def self.verify_error_on_create
    expect(URI.parse(current_url).path).to eq('/users')
    expect(page).to have_selector(:css, '#error_explanation')
  end
end
