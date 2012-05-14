Given /^I'm on my settings form$/ do
  user = FactoryGirl.create :user
  visit edit_user_path user
end

When /^I attach file test.pdf by clicking on Choisir un CV$/ do
  attach_file 'user_cv', "#{Rails.root}/spec/fixtures/cv2.pdf"
end

When /^I click on "([^"]*)"$/ do |element|
  click_button element
end

Then /^I should see "([^"]*)"$/ do |arg1|
  page.should have_content arg1
end