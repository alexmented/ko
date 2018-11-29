require 'test_helper'


class UsersControllerTest < ActionDispatch::IntegrationTest
 test "login and calc" do 
post '/users', params: { user: {email: 'f@f.com', password: 'f', password_confirmation: 'f'} } 
get '/session/login' 
assert_response :success 
# Неудачная попытка входа 
post '/session/create', params: { email: 'fdjidf', password: 'dffd', commit: 'Login' } 
follow_redirect! 
assert_equal '/session/login', path 
# Удачная попытка входа 
post '/session/create', params: { email: 'f@f.com', password: 'f', commit: 'Login' } 
follow_redirect! 
assert_equal '/', path 
# Проверяем, что теперь вычисления доступны 
# В отличие от предыдущего теста 
get '/logic/input' 
assert_response :success 

end 
end