FactoryGirl.define do

  factory :picture do
    user { User.first || FactoryGirl.create(:user) }
    image { File.new("#{Rails.root}/spec/assets/images/google_logo.png") }
  end
end
