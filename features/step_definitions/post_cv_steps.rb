Given /^I'm on the page of a "([^"]*)"$/ do |klass|
  object = FactoryGirl.create klass
  visit user_path object
end

When /^I click on button "([^"]*)"$/ do |tag_name|
  click_button tag_name
end


When /^I attach file "([^"]*)" by clicking on "([^"]*)"$/ do |file_name, tag_name|
  f = Tempfile.new file_name
  attach_file tag_name, f.path
end

Then /^I should see "([^"]*)"$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end