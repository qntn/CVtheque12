require 'spec_helper'

describe User do
  before do
    @user = FactoryGirl.create :user
  end

  subject { @user }

  it {should have_attached_file(:cv)}
end
