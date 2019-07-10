require 'rails_helper'

RSpec.describe Contact, type: :model do
  it "validates presence of email" do 
    expect(response).t
end


describe "POST #create" do
it "returns http success" do
  post :create, params:{contact: {name: "Jessica", email: "jesspoe@gmail.com", message: "hello y'all this should pass the test!"}}
  expect(response).to redirect_to '/thanks'
end 