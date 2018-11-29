require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "crU" do
    @user = User.new(:email => "f@f.ru", :password => 'f', :password_confirmation => 'f')
    @user.save
    assert_equal User.all.count, 3
   end
   test "crH" do
    @hell = Hell.new(:tas => "asdfsdf")
    @hell.save
    assert_equal Hell.all.count, 2
   end
   test "edH" do
    @user = User.new(:email => "f@f.ru", :password => 'f', :password_confirmation => 'f')
    @user.save
    @hell = @user.Hell.new(:tas => "hello")
    @hell.update(:tas => "hello1")
    assert_equal Hell.all[2][:tas], "hello1"
   end
   test "deH" do
    @user = User.new(:email => "f@f.ru", :password => 'f', :password_confirmation => 'f')
    @user.save
    @hell = @user.Hell.new(:tas => "hello")
    @hell.destroy
    assert_equal Hell.all.count, 2
   end
end
