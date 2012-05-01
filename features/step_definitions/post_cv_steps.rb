Given /^I'm logged in$/ do

end

When /^I click on "([^"]*)"$/ do |arg1|
  page.should have_link text
end

Then /^I should see "([^"]*)"$/ do |arg1|

end