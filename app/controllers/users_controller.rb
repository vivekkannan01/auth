class UsersController < ApplicationController
  def show
    @user = User.find_by({ "id" => params["id"] })
  end

  def new
    # render template: users (check class video)
  end

  def create
    @user = User.new
    # if User.find_by({"email" => params["email"]}) == nil
      @user["first_name"] = params["first_name"]
      @user["last_name"] = params["last_name"]
      @user["email"] = params["email"]
      @user["password"] = BCrypt::Password.create(params["password"])
      @user.save
    end
    # redirect_to "/users/#{@user["id"]}"
  end
