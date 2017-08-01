Given(/^I can access the QuidCo website$/) do
   @quidco_website = Quidcowebsite.new
   @quidco_website.quidco_home_page.load
end

Given(/^I can access the Google Mail website$/) do
	@google_mail_website = Googlemailwebsite.new
	@google_mail_website.google_mail_home_page.load
end

Given(/^I am logged in to the QuidCo scheme$/) do
	@quidco_website = Quidcowebsite.new
	@quidco_website.quidco_home_page.load
	pending # Write code here that turns the phrase above into concrete actions
end

When(/^I search for Argos$/) do
	pending # Write code here that turns the phrase above into concrete actions
end

When(/^I verify my credentials$/) do
	@google_mail_website.google_mail_home_page.verify_credentials
end

When(/^I click the Join button$/) do
	@quidco_website.quidco_home_page.click_join_button
end

When(/^I fill in the form details$/) do
	@quidco_website.quidco_join_us.fill_form
	@quidco_website.quidco_join_us.onboarding
end

When(/^I click the Sign in button$/) do
	@quidco_website.quidco_home_page.click_sign_in_button
end

When(/^I enter valid user details$/) do
	@quidco_website.quidco_sign_in.fill_form
end

When(/^I navigate to Argos Credit Card details page$/) do
	pending # Write code here that turns the phrase above into concrete actions
end

When(/^I save the Stats section to a file$/) do
	pending # Write code here that turns the phrase above into concrete actions
end

When(/^I click on the Logout button$/) do
	pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I will receive a confirmation message$/) do
	@quidco_website.my_quidco.check_sign_up_success
end

Then(/^I will see an Authentication E\-Mail from QuidCo$/) do
	@google_mail_website.google_mail_home_page.validate_confirmation_email
end

Then(/^I can see the QuidCo homepage$/) do
	pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I will be logged in to the QuidCo scheme$/) do
	pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see the statistics$/) do
	pending # Write code here that turns the phrase above into concrete actions
end

Then(/^a file should be created for me$/) do
	pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I am logged out of the Quidco scheme$/) do
	pending # Write code here that turns the phrase above into concrete actions
end