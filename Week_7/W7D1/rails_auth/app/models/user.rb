class User < ActiveRecord::Base
    # u = User.new({username:"Jose", password: "password1234"})

    attr_reader :password
  
    validates :username, :password_digest, :session_token, presence: true
    validates :password, length: { minimum: 6, allow_nil: true }
  
    before_validation :ensure_session_token
  
    # Return the user with the given credentials. Returns nil if the user wasn't found.
    def self.find_by_credentials(username, password)
      user = User.find_by(username: username) # Get the user with the give username.
      return nil if user == nil # Return nil if the user wasn't found

      # Check if the given password hashes to the digest, and return the user if it does.
      return user if user.password_digest.is_password?(password)
      return nil # Wrong password, return nil.
    end
  
    def password=(password)
      @password = password
      self.password_digest = BCrypt::Password.create(password)
    end
  
    def password_digest
      BCrypt::Password.new(super)
    end
  
    # Creates a session token
    def ensure_session_token
      self.session_token = SecureRandom::urlsafe_base64 if self.session_token == nil
    end
  
    def reset_session_token!
      self.session_token = SecureRandom::urlsafe_base64
      self.save!
    end
  end