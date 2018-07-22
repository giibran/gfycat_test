require 'site_prism'

class Signup < SitePrism::Page
  set_url 'https://gfycat.com/signup'
  set_url_matcher %r{https://www\.gfycat\.com/signup}

  element :username_input, '[name="username"]'
  element :password_input, '[name="password"]'
  element :email_input, '[name="email"]'
  element :sign_up_button, 'button', text: 'Sign Up'
  element :connect_facebook_button, 'button', text: 'Connect with Facebook'

end