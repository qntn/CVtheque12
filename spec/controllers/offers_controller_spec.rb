require 'spec_helper'

describe OffersController do
  it 'should get index' do
    offers = FactoryGirl.create_list(:offer, 25)
    get :index
    response.should be_success
    assigns(:offers).should eq(offers)
  end
end
