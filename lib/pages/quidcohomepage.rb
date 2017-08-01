class Pages::Quidcohomepage < SitePrism::Page

  set_url "https://www.quidco.com/"
  set_url_matcher /quidco.com/

  def click_join_button
    click_link('Join for free')
  end

  def click_sign_in_button
    click_link('Sign in')
  end

end