Given /^There are "([^"]*)" offers$/ do |count|
  FactoryGirl.create_list(:offer, count.to_i)
  Offer.count.should == count.to_i
end
When /^I'm go on the homepage$/ do
  visit root_path
  current_path.should == root_path
end
Then /^I should see the offers with title "([^"]*)"$/ do |title|
  page.should have_content title
end