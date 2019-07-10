require 'rails_helper'

RSpec.describe Admin, type: :model do

  describe Admin do  
    it "finds the username" do
      admin = Admin.new(username: "Jessica", password: "123", password_confirmation: "123")
      expect(admin.username).to eq("Jessica")
    end


  end

  

end
