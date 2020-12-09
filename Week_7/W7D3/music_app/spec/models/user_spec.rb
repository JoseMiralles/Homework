require 'rails_helper'

RSpec.describe User, type: :model do
  
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password_digest) }
  it { should validate_presence_of(:session_token) }
  it { should allow_value("password1234").for(:password)  }
  it { should_not allow_value("pass").for(:password) }
  it { should allow_value(nil).for(:password)  }

end
