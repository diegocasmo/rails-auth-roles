require 'rails_helper'

RSpec.describe Picture, type: :model do

  it 'has a valid factory' do
    expect(build(:picture)).to be_valid
  end

  describe 'Validation' do

    describe 'MAX_PICTURES_PER_USER' do

      it "should not allow to create more than #{Picture::MAX_PICTURES_PER_USER} pictures per user" do
        Picture::MAX_PICTURES_PER_USER.times do
          create(:picture)
        end
        expect(build(:picture).valid?).to eq(false)
      end
    end
  end
end
