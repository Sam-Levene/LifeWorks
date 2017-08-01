Given(/^I can access the QuidCo website$/) do
	@quidco_website = Quidcowebsite.new
	@quidco_website.quidco_home_page.load
end

Then(/^I can see the QuidCo homepage$/) do
	@quidco_website.quidco_home_page.validate_title
end

When(/^I click the Join button$/) do
	@quidco_website.quidco_home_page.click_join_button
end

When(/^I fill in the form details$/) do
	@quidco_website.quidco_join_us.fill_form
	@quidco_website.quidco_join_us.onboarding
end

Then(/^I will receive a confirmation message$/) do
	@quidco_website.my_quidco.check_sign_up_success
end

When(/^I click the Sign in button$/) do
	@quidco_website.quidco_home_page.click_sign_in_button
end

When(/^I enter valid user details$/) do
	@quidco_website.quidco_sign_in.fill_form
end

Then(/^I will be logged in to the QuidCo scheme$/) do
	@quidco_website.my_quidco.check_sign_up_success
end

Given(/^I can not access the QuidCo website$/) do
	@quidco_website = Quidcowebsite.new
end

Then(/^I can not see the QuidCo homepage$/) do
	@quidco_website.quidco_home_page.invalid_site
end

When(/^I fill in the form details incorrectly$/) do
	@quidco_website.quidco_join_us.invalid_fill_form
end

Then(/^I will not receive a confirmation message$/) do
	@quidco_website.my_quidco.check_sign_up_failure
end

When(/^I enter invalid user details$/) do
	@quidco_website.quidco_sign_in.invalid_fill_form
end

Then(/^I will not be logged in to the QuidCo scheme$/) do
	@quidco_website.my_quidco.check_sign_up_failure
end

When(/^I click on the Logout button$/) do
	@quidco_website.my_quidco.click_logout
end

Then(/^I am logged out of the Quidco scheme$/) do
	@quidco_website.my_quidco.sign_out
end

When(/^I do not click on the Logout button$/) do
	@quidco_website.my_quidco.do_not_click
end

Then(/^I am not logged out of the Quidco scheme$/) do
	@quidco_website.my_quidco.sign_out_invalid
end