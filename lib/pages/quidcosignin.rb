class Pages::Quidcosignin < SitePrism::Page

	set_url "https://www.quidco.com/sign-in/"
	set_url_matcher /quidco.com/

	def fill_form
		fill_in('username', :with => 'joeb9605@gmail.com')
		fill_in('password', :with => 'examplepass')
		click_button('Sign in')
	end

	def invalid_fill_form
		fill_in('username', :with => '')
		fill_in('password', :with => '')
		click_button('Sign in')
	end

end