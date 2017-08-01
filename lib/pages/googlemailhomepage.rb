class Pages::Googlemailhomepage < SitePrism::Page

  set_url "https://mail.google.com/"
  set_url_matcher /google.com/

  def verify_credentials
  	fill_in('identifier', :with => "joeb9605@gmail.com")
  	find('#identifierNext').click
  	fill_in('password', :with => "Alphabet12")
  	find('#passwordNext').click

  	# Below will be neccesary when logging in for the first time, as Google won't recognise your computer
  	# fill_in('knowledgeLoginLocationInput', :with => "London")
  	# find('#next').click
  end

  def validate_confirmation_email
  end

end