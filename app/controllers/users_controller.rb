class UsersController < ApplicationController
  def edit
    @user = User.where :email => 'q.d@gmail.com'
  end
end
