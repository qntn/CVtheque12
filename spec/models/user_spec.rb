require 'spec_helper'

describe User do
  it { should have_attached_file(:cv) }
end
