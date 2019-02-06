require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  test 'layout links' do
    get root_path
    assert_response :success
    assert_select 'a[href=?]', root_path, count: 2 # earlier it was counting 3 links(resolved)
    # --> when I deleted image tag on home it got resolved idk why
    assert_select 'a[href=?]', help_path
    assert_select 'a[href=?]', about_path
    assert_select 'a[href=?]', contact_path
    assert_select 'a[href=?]', signup_path
    assert_select 'a[href=?]', login_path
    get contact_path
    assert_select 'title', full_title('CONTACT')
  end
end
