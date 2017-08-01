class Pages::Quidcoargos < SitePrism::Page

	set_url "https://www.quidco.com/argos-credit-card/"
	set_url_matcher /quidco.com\/argos-credit-card/

	def validate_title
		if (page.title != "Argos Credit Card Cashback, Voucher Codes & Discount Codes | Quidco")
			throw "Page title does not match expected outcome. Expected: Argos Credit Card Cashback, Voucher Codes & Discount Codes | Quidco. Actual: #{page.title}"
		end
	end

	def see_stats
		click_link("...Read more")
	end

	def save_page
		Capybara::save_page("/home/sam/LifeWorks.html")
	end

	def do_not_save_page

	end

	def check_file_exists
		if (File.file?("/home/sam/LifeWorks.html") == false)
			throw "I couldn't find the file. Was it saved?"
		end
	end

	def check_file_does_not_exist
		if (File.file?("/home/sam/LifeWorks.html") == true)
			throw "I found the file, but I shouldn't have."
		end
	end

end