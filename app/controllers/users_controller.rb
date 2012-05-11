class UsersController < ApplicationController
  before_filter :set_user, :only => [:edit, :update]

  def edit
  end

  def update
    if @user.update_attributes :cv => params[:user][:cv]
        redirect_to edit_user_url @user
    else
        render :action => :edit
    end
  end

  def set_user
    @user = User.find_by_email 'q.d@gmail.com'
  end
end
