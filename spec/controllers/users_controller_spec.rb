require 'spec_helper'

describe UsersController do
  it "should get edit" do
    get "edit"
    response.should be_success
  end
  it "should assign user" do
    user = FactoryGirl.create :user
    get "edit"
    assigns(:user).should eq([user])
  end
end
