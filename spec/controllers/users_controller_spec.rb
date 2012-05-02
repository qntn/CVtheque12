require 'spec_helper'

describe UsersController do
  it "should get show" do
    get "show"
    response.should be_success
  end
end
