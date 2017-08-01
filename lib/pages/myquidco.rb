class Pages::Myquidco < SitePrism::Page
	element :pageTitle, "My Quidco"

	def check_sign_up_success
		if (page.title != pageTitle)
			throw "Page title does not match expected outcome"
		end
	end
end