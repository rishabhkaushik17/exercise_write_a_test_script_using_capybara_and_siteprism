class GoogleSearch < SitePrism::Page
  set_url 'https://www.google.com/'
  set_url_matcher /google/
  element :search_field, "input[name='q']"
  element :search_button, "input[name='btnK']"
  elements :first_result, "h3"
  def initialize
    load
    displayed?
  end

  def search(keyword)
    search_field.set keyword
    search_button.click
  end

  def open_first_searched_result
    first_result.first.click
  end
end