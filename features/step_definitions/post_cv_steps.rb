Given /^I'm on my settings form$/ do
  visit edit_user_registration_path
end

When /^I attach file cv2.pdf by clicking on Choisir un CV$/ do
  attach_file 'user_cv', "#{Rails.root}/spec/fixtures/cv2.pdf"
end

When /^I click on "([^"]*)"$/ do |element|
  click_on element
end

Then /^I should see "([^"]*)"$/ do |string|
  page.should have_content string
end

Given /^I'm on an offer page$/ do
  visit offer_path @offer
end

When /^I already uploaded my CV$/ do
  @user.cv.should_not be_nil
end

When /^I should see the offer title$/ do
  page.should have_content @offer.title
end