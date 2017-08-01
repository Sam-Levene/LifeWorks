class Pages::Quidcojoin < SitePrism::Page

	set_url "https://www.quidco.com/join-quidco/"
	set_url_matcher /quidco.com/

	# Please modify this data to match your test data, as I was using a test account as a dummy.
	def fill_form
		fill_in('first_name', :with => 'Joe')
		fill_in('last_name', :with => 'Bloggs')
		fill_in('new_email', :with => 'test36650@gmail.com')
		fill_in('new_password', :with => 'examplepass')
		find(:xpath, "//*[@id=\"agree_to_terms_label\"]").click
		click_button('Join Quidco free')
	end

	def invalid_fill_form
		fill_in('first_name', :with => '')
		fill_in('last_name', :with => '')
		fill_in('new_email', :with => '')
		fill_in('new_password', :with => '')
		click_button('Join Quidco free')
	end

	def onboarding
		click_link("Let's get started")
		find(:xpath, "//*[@id=\"basic-vs-premium\"]/div[1]/div[2]/div").click
		click_link("Next step")
		click_link("Skip step")
		click_link("Skip step")
		click_link("Finish")
	end
end