# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  email           :string           not null
#  password_digest :string           not null
#  session_token   :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord

    attr_reader :password

    validates :email, presence: true, uniqueness: true
    validates :password_digest, :session_token, presence: true
    validates :password, length: {minimum: 6}, allow_nil: true

    
    # Return the user with the given credentials if found, and if the password matches.
    def self.find_by_credentials(email, pass)
        user = User.find_by(email: email)
        user.password = pass
        return user if user && user.is_password?(pass)
        nil
    end


    # PASSWORD
    def password=(pass)
        @password = pass
        self.password_digest = BCrypt::Password.create(pass)
    end

    def is_password?(pass)
        digested = BCrypt::Password.new(self.password_digest)
        digested.is_password?(pass)
    end


    # SESSION TOKEN
    after_initialize :ensure_session_token

    # Creates a session token if one doesn't exist
    # Called as a callback every time a User object is initialized by "after_initialize".
    def ensure_session_token
        self.session_token = SecureRandom::urlsafe_base64 if self.session_token == nil
    end

    # Generates and saves a new session token to this user.
    def reset_session_token!
        self.update!(session_token: SecureRandom::urlsafe_base64)
    end

end
