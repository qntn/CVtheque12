require 'spec_helper'

describe UsersController do
  it "should get edit" do
    get "edit"
    response.should be_success
  end
end
