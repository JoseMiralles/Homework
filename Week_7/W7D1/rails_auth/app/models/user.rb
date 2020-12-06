class User < ApplicationRecord

    # A user password can be nil. But not a string smaller than 6 chars.
    validates: password, length: {minimum: 6, allow_nill: true}

    def password=(pw)
        self.password_digest =  BCrypt.password.create(password)
    end

end
