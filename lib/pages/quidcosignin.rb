class Pages::Quidcosignin < SitePrism::Page

	set_url "https://www.quidco.com/sign-in/"
	set_url_matcher /quidco.com/

	# Please modify this data to match your test data, as I was using a test account as a dummy.
	def fill_form
		fill_in('username', :with => 'test36650@gmail.com')
		fill_in('password', :with => 'examplepass')
		click_button('Sign in')
	end

	def invalid_fill_form
		fill_in('username', :with => '')
		fill_in('password', :with => '')
		click_button('Sign in')
	end

end