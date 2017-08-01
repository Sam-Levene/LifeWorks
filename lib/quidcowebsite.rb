class Quidcowebsite

	def quidco_home_page
		Pages::Quidcohomepage.new
	end

	def quidco_join_us
		Pages::Quidcojoin.new
	end

	def my_quidco
		Pages::Myquidco.new
	end

	def quidco_sign_in
		Pages::Quidcosignin.new
	end
end