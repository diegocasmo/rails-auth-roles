# Represents the home page
require 'rspec/expectations'

class HomePage
  extend Capybara::DSL
  extend RSpec::Matchers

  def self.visit
    Capybara.visit('/')
    self
  end

  def self.verify_successful_log_in
    expect(URI.parse(current_url).path).to eq('/')
    expect(page.find('.alert.alert-info').text()).to eq(I18n.t('devise.sessions.signed_in'))
  end

  def self.verify_user_can_log_out
    click_link('Logout')
    expect(URI.parse(current_url).path).to eq('/users/sign_in')
    expect(page.find('.alert.alert-warning').text()).to eq(I18n.t('devise.failure.unauthenticated'))
  end

  def self.verify_successful_picture_upload
    expect(URI.parse(current_url).path).to eq('/')
    expect(page.find('.alert.alert-info').text()).to eq('Picture was successfully created.')
  end
end
