Given(/^I am logged in to the QuidCo scheme$/) do
	@quidco_website = Quidcowebsite.new
	@quidco_website.quidco_home_page.load
	@quidco_website.quidco_home_page.click_sign_in_button
	@quidco_website.quidco_sign_in.fill_form
	@quidco_website.my_quidco.check_sign_up_success
end

When(/^I search for "([^"]*)"$/) do |searchTerm|
	@quidco_website.my_quidco.search(searchTerm)
end

When(/^I navigate to Argos Credit Card details page$/) do
	@quidco_website.my_quidco.click_credit_card
end

Then(/^I will see the statistics$/) do
	@quidco_website.quidco_argos_page.validate_title
	@quidco_website.quidco_argos_page.see_stats
end

When(/^I do not search for "([^"]*)"$/) do |searchTerm|
	puts "I did not search for #{searchTerm}"
end

Then(/^I will not see the Argos Credit Card details page$/) do
	@quidco_website.my_quidco.no_details
end

When(/^I do not navigate to Argos Credit Card details page$/) do
  @quidco_website.my_quidco.do_not_click
end

Then(/^I will not see the statistics$/) do
  
end

When(/^I save the Stats section to a file$/) do
	@quidco_website.quidco_argos_page.save_page
end

Then(/^a file will be created for me$/) do
	pending # Write code here that turns the phrase above into concrete actions
end

When(/^I do not save the Stats section to a file$/) do
	@quidco_website.quidco_argos_page.do_not_save_page
end

Then(/^a file will not be created for me$/) do
	pending # Write code here that turns the phrase above into concrete actions
end