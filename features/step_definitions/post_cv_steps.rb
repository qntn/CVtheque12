Given /^I'm on my settings form$/ do
  user = FactoryGirl.create :user
  visit edit_user_path user
end

When /^I attach file "([^"]*)" by clicking on "([^"]*)"$/ do |file_name, element|
  f = Tempfile.new file_name
  attach_file element, f.path
end

When /^I click on "([^"]*)"$/ do |element|
  click_on element
end

Then /^I should see "([^"]*)"$/ do |arg1|
  page.should have_content arg1
end