require 'spec_helper'
require "paperclip/matchers"

describe UsersHelper do
end

Spec::Runner.configure do |config|
  config.include Paperclip::Shoulda::Matchers
end