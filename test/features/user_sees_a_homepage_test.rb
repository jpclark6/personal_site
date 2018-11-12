require './test/test_helper'

class HomepageTest < CapybaraTestCase
  def test_user_can_see_the_homepage
    visit '/'

    assert page.has_content?("Welcome!")
    assert_equal 200, page.status_code
  end

  def test_nonexistant_pages_have_errors
    visit '/nope_not_here'

    assert page.has_content?("404")
    assert_equal 404, page.status_code
  end
end
