Given /^I'm on the page "([^"]*)"$/ do |arg1|
  user = FactoryGirl.create(:user)
  visit user
end

When /^I click on "([^"]*)"$/ do |arg1|
  click_on arg1
end

Then /^I should see "([^"]*)"$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end