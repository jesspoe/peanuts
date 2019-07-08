require 'rails_helper'

RSpec.describe AdminsController, type: :controller do

  describe "POST #create" do
    it "returns http success" do
      post :create, params:{admin: {username: "Jessica", password: "123123", password_confirmation: "123123"}}
      expect(response).to redirect_to root_path
    end
  
  
    it "returns failure for mismatched passwords" do
      post :create, params:{admin: {username: "Jessica", password: "123123", password_confirmation: "124124"}}
      expect(response).to have_http_status(400)
    end

    

  end

end
