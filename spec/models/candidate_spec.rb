require 'spec_helper'

describe Candidate do
  it { should belong_to :offer }
  it { should belong_to :user }
end
