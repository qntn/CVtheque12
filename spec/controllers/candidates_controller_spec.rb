require 'spec_helper'

describe CandidatesController do
  login_user
  it "should post create" do
    subject.current_user.should_not be_nil
    offer = FactoryGirl.create :offer
    post :create, :candidate => { :offer_id => offer.id }
    assigns(:candidate).offer_id.should eq offer.id
    assigns(:candidate).user_id.should eq subject.current_user.id
    assigns(:candidate).should_not be_new_record
    response.should redirect_to offer
  end
end
