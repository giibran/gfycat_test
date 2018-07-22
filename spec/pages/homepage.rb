require 'site_prism'

class Homepage < SitePrism::Page
  set_url 'https://gfycat.com/'
  set_url_matcher %r{https://www\.gfycat\.com.*}

end