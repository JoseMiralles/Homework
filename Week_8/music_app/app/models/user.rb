class User < ApplicationRecord

    # u = User.new({email: "test@testest.com", password: "password1234"})

    attr_reader :password

    validates :email, :session_token, uniqueness: true, presence: true
    validates :password, presence: true, length: {minimum: 6}
    validates :password_digest, uniqueness: true


    def self.find_by_credentials(email, password)
        user = self.find_by(email: email)
        if user && user.is_password?(password)
            return user
        end
        return nil
    end

    
    # PASSWORD
    def password=(pass)
        @password = pass
        self.password_digest = BCrypt::Password.create(pass)
    end

    def is_password?(pass)
        BCrypt::Password.new(self.password_digest).is_password?(pass)
    end



    # SESSION TOKEN
    after_initialize :ensure_session_token!

    def ensure_session_token!
        self.session_token = SecureRandom::urlsafe_base64 if self.session_token == nil
    end

    def reset_session_token!
        self.session_token = SecureRandom::urlsafe_base64
        self.save
        self.session_token
    end

end
