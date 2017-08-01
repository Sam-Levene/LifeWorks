class Pages::Myquidco < SitePrism::Page

	def check_sign_up_success
		if (page.title != "My Quidco")
			throw "Page title does not match expected outcome"
		end
	end

	def check_sign_up_failure
		if (page.title == "My Quidco")
			throw "Somehow you were able to login."
		end
	end

	def search(searchTerm)
		fill_in('search', :with => searchTerm)
		find('#store-qsearch-submit').click
	end

	def click_credit_card
		find(:xpath, "//*[@id=\"search-results-related-retailers-container\"]/ul/li/div/div/div/div/ul/li[2]/a").click
	end

	def no_details
		if (page.has_xpath?("//*[@id=\"search-results-related-retailers-container\"]/ul/li/div/div/div/div/ul/li[2]/a"))
			throw "I shouldn't see this. I haven't searched for anything"
		end
	end

	def do_not_click
		
	end

end