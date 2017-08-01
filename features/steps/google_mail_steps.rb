Given(/^I can access the Google Mail website$/) do
	@google_mail_website = Googlemailwebsite.new
	@google_mail_website.google_mail_home_page.load
end

When(/^I verify my credentials$/) do
	@google_mail_website.google_mail_home_page.verify_credentials
end

Then(/^I will see an Authentication E\-Mail from QuidCo$/) do
	@google_mail_website.google_mail_home_page.validate_confirmation_email
end

When(/^I do not verify my credentials$/) do
	@google_mail_website.google_mail_home_page.do_not_verify_credentials
end

Then(/^I will not see an Authentication E\-Mail from QuidCo$/) do
	@google_mail_website.google_mail_home_page.do_not_validate_confirmation_email
end