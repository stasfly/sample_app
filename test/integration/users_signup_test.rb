require "test_helper"

class UsersSignupTest < ActionDispatch::IntegrationTest
  
  test "invalid signup information" do
    get signup_path
    assert_no_difference 'User.count' do
<<<<<<< HEAD
      post users_path, params: { user: { name: "", email: "user@invalid", password:
        "foo", password_confirmation: "bar" }}
    end
    assert_template 'users/new'
=======
      post users_path, params: { user: {name: "",
                                 email: "user@invalid",
                                 password: "foo",
                                 password_confirmation: "bar" } }
    end
    assert_template 'users/new'
    #assert_select 'div#<CSS id for error explanation>'
    #assert_select 'div.<CSS class for field with error>'
>>>>>>> modeling-users
  end

  test "valid signup information" do
    get signup_path
    assert_difference 'User.count', 1 do
<<<<<<< HEAD
      post users_path, params: {user: {name: "userhhh", email: 'exampl@eemail.com',
                               password: "qwerty", password_confirmation: "qwerty"}}
    end
    follow_redirect!
    assert_template 'users/show'
    assert_not flash.nil? || flash.empty? || flash.blank?
    assert is_logged_in?
    end

=======
      post users_path, params: { user: {name: "userX",
                                 email: "user@valid.com",
                                 password: "qwerty",
                                 password_confirmation: "qwerty" } }
    end
    follow_redirect!
    assert_template 'users/show'
    assert_not flash.empty?
  end
>>>>>>> modeling-users

end
