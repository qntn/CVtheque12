require 'spec_helper'

describe OffersController do
  it 'should get index' do
    offers = FactoryGirl.create_list(:offer, 25)
    get :index
    response.should be_success
    assigns(:offers).should eq(offers)
  end
  it 'should get show' do
    offer = FactoryGirl.create(:offer)
    get :show, :id =>  offer.id
    response.should be_success
    assigns(:offer).should eq(offer)
  end
end
