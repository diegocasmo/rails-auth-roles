# Represents the new picture page
require 'rspec/expectations'

class NewPicturePage
  extend Capybara::DSL
  extend RSpec::Matchers

  def self.visit
    Capybara.visit('/pictures/new')
    self
  end

  def self.upload_picture
    attach_file('picture[image]', "#{Rails.root}/spec/assets/images/google_logo.png")
    click_button('Upload')
  end
end
