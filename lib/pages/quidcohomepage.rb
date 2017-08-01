class Pages::Quidcohomepage < SitePrism::Page

  set_url "https://www.quidco.com/"
  set_url_matcher /quidco.com/

  def click_join_button
    click_link('Join for free')
  end

  def click_sign_in_button
    click_link('Sign in')
  end

  def validate_title
    if (page.title != "Quidco - The UK’s #1 Cashback & Voucher Codes Site")
      throw "Page title did not match expected outcome"
    end
  end

  def invalid_site
    if (page.title == "Quidco - The UK’s #1 Cashback & Voucher Codes Site")
      throw "This should have failed. Somehow you were able to access the site."
    end
  end

end