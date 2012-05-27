require 'spec_helper'

describe UsersController do
  before(:each) do
    @user = FactoryGirl.create :user
  end
  it "should get edit" do
    get "edit"
    response.should be_success
  end
  it "should assign user" do
    get "edit"
    assigns(:user).should eq(@user)
  end
  it "should put update" do
    cv = Rack::Test::UploadedFile.new("#{Rails.root}/spec/fixtures/cv2.pdf", 'application/pdf', true)
    put :update, :id => @user.id, :user => { :cv => cv }
    assigns(:user).should eq(@user)
    response.should redirect_to edit_user_url @user
  end
  it "should be able to log in" do
    sign_in @user
    subject.current_user.should_not be_nil
  end
end
