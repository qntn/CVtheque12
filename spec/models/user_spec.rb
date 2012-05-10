require 'spec_helper'

describe User do
  before do
    @user = FactoryGirl.create :user
  end

  subject { @user }

  it { should have_attached_file(:cv) }
  it { should validate_attachment_content_type(:cv).allowing('application/pdf').rejecting('text/plain', 'text/xml') }
end
