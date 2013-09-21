class UsersController < ApplicationController
  def new
    @user = User.new
  end
  def show
    @user = User.find(params[:name])
  end
end
