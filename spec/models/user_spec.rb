require 'rails_helper'

RSpec.describe User, type: :model do

  it 'has a valid factory' do
    expect(build(:user)).to be_valid
  end

  describe 'Validation' do

    describe 'email' do

      it 'should not create user if email is invalid' do
          user = build(:user)
          user.email = 'test io.com'
          expect(user.valid?).to eq(false)
      end

      it 'should not create user if email is blank' do
          user = build(:user)
          user.email = nil
          expect(user.valid?).to eq(false)
      end

      it 'should not allow two users with the same email' do
        create(:user)
        user = build(:user, email: User.first.email)
        expect(user.valid?).to eq(false)
      end
    end

    describe 'password' do

      it 'should not create user if password length is less than 6 chars' do
          user = build(:user)
          user.password = '12345'
          expect(user.valid?).to eq(false)
      end

      it 'should not create user if password is blank' do
          user = build(:user)
          user.password = nil
          expect(user.valid?).to eq(false)
      end
    end
  end

  describe 'Scopes' do

    describe 'with_pictures' do

      it 'should only return users with pictures' do
        create(:user) do |user|
          user.pictures.create(attributes_for(:picture))
        end
        create(:user)
        expect(User.count).to eq(2)
        expect(User.with_pictures.count).to eq(1)
      end
    end
  end
end
