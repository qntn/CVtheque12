Given /^I'm on the page of a "([^"]*)"$/ do |klass|
  object = FactoryGirl.create klass
  visit user_path object
end

When /^I attach file "([^"]*)" by clicking on "([^"]*)"$/ do |file_name, element|
  f = Tempfile.new file_name
  attach_file element, f.path
end

When /^I click on "([^"]*)"$/ do |element|
  click_on element
end

Then /^I should see "([^"]*)"$/ do |arg1|
  page.has_content? arg1
end