require 'rails_helper'

RSpec.describe UsersController, type: :controller do

    describe "GET #new" do
    it "renders the new template" do
      get :new, {}
      expect(response).to render_template("new")
    end
  end

  describe "POST #create" do
    context "with invalid params" do
      it "validates the presence of the user's email and password" do
        expect{ post :create, params: { user: {email: "test"} } }.to raise_error
      end
      it "validates that the password is at least 6 characters long" do
        expect{ post :create, params: { user: {email: "test@email.com", password: "pass"} } }.to raise_error
      end
    end

    context "with valid params" do
      it "redirects user to users show on success" do
        post :create, params: { user: {email: "test@test.test", password: "password1234"} }
        expect(response).to redirect_to(user_url(User.first.id))
      end
    end
  end

end
