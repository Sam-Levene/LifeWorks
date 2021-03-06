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
		fill_in('search', :with => searchTerm+"\n")
	end

	def click_credit_card
		find(:xpath, "//*[@id=\"search-results-related-retailers-container\"]/ul/li/div/div/div/div/ul/li[2]/div/div/a").click
	end

	def no_details
		if (page.has_xpath?("//*[@id=\"search-results-related-retailers-container\"]/ul/li/div/div/div/div/ul/li[2]/div/div"))
			throw "I shouldn't see this. I haven't searched for anything"
		end
	end

	def do_not_click
		
	end

	def click_logout
		find(:xpath, "//*[@id=\"main-nav\"]/div[2]/div/div/div/ul/div/ul/li[2]").hover
		click_link("Sign out")
	end

	def sign_out
		if(page.title !="Quidco - Sign out")
			throw "I didn't see a valid sign out message."
		end
	end

	def sign_out_invalid
		if(page.title =="Quidco - Sign out")
			throw "I saw a valid sign out message when I shouldn't have."
		end
	end
end