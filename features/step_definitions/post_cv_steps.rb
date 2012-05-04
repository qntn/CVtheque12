Given /^I'm on the page of a "([^"]*)"$/ do |klass|
  object = FactoryGirl.create klass
  visit user_path object
end

When /^I attach file "([^"]*)" by clicking on "([^"]*)"$/ do |file_name, element|
  f = Tempfile.new file_name
  attach_file element, f.path
end

When /^I click on "([^"]*)"$/ do |element|
  page.has_content? "Envoyer CV"
  click_on "Envoyer CV"
end

Then /^I should see "([^"]*)"$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end