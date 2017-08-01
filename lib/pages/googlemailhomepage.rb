class Pages::Googlemailhomepage < SitePrism::Page

  set_url "https://mail.google.com/"
  set_url_matcher /google.com/

  # Please modify this data to match your test data, as I was using a test account as a dummy.
  def verify_credentials
  	fill_in('identifier', :with => "test36650@gmail.com")
  	find('#identifierNext').click
  	fill_in('password', :with => "tester123")
  	find('#passwordNext').click

  	# Below will be neccesary when logging in for the first time, as Google won't recognise your computer
  	# fill_in('knowledgeLoginLocationInput', :with => "London")
  	# find('#next').click
  end

  def do_not_verify_credentials
  	fill_in('identifier', :with => "")
    find('#identifierNext').click
  end

  def validate_confirmation_email
    if (page.has_link?("Welcome to Quidco") == false)
        throw "I didn't see a validation e-mail, but I should have"
    end
  end
  
  def do_not_validate_confirmation_email
  	if (page.has_link?("Welcome to Quidco") == true)
        throw "I did see a validation e-mail, but I shouldn't have"
    end
  end

end