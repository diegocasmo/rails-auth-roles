module Support
  module User

    def self.verify_user_account(user)
      user.update_attributes(confirmed_at: Time.zone.now)
    end
  end
end
