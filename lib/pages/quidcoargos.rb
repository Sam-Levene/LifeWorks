class Pages::Quidcoargos < SitePrism::Page

	set_url "https://www.quidco.com/argos-credit-card/"
	set_url_matcher /quidco.com\/argos-credit-card/

	def validate_title
		if (page.title != "Argos Credit Card Cashback, Voucher Codes & Discount Codes | Quidco")
			throw "Page title does not match expected outcome"
		end
	end

	def see_stats
		click_link("...Read more")
	end

	def save_page
		Capybara::save_page("~/LifeWorks/")
	end

	def do_not_save_page

	end

end