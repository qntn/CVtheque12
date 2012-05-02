Given /^I'm on the page of a "([^"]*)"$/ do |arg1|
  user = FactoryGirl.create(arg1)
  visit user_path(user)
end

When /^I click on "([^"]*)"$/ do |arg1|
  click_on arg1
end

Then /^I should see "([^"]*)"$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end