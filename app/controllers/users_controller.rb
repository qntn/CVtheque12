# encoding: utf-8
class UsersController < ApplicationController
  before_filter :authenticate_user!
  def edit
  end

  def update
    if current_user.update_attributes :cv => params[:user][:cv]
      flash[:notice] = 'Le CV a été téléchargé'
      redirect_to edit_user_url current_user
    else
      render :action => :edit
    end
  end
end
