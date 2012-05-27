require 'spec_helper'

describe UsersController do
  before(:each) do
    @user = FactoryGirl.create :user
    sign_in @user
  end
  it "should put update" do
    cv = Rack::Test::UploadedFile.new("#{Rails.root}/spec/fixtures/cv2.pdf", 'application/pdf', true)
    put :update, :user => { :cv => cv }
    response.should redirect_to edit_user_registration_path
  end
  it "should be able to log in" do
    subject.current_user.should_not be_nil
  end
end
