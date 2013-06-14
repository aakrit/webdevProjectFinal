class UserEventsController < ApplicationController

  before_filter :find_user, except: [:new, :create, :index]

  def find_user
    @user = User.find(params[:id])
  end
  # GET /users
  # GET /users.json
  def index
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end

  # GET /users/1
  # GET /users/1.json
  def show
    # @user = User.find_by_id(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end

  # GET /users/new
  # GET /users/new.json
  def new
    @user = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user }
    end
  end

  # GET /users/1/edit
  def edit
    # @user = User.find_by_id(params[:id])
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new
    @user.email = params[:email]
    @user.password = params[:password]
    @user.password_confirmation = params[:password_confirmation]
    @user.username = params[:username]

    if @user.save
      session[:user_id] = @user.id
      redirect_to users_url
    else
      render 'new'
    end
  end

  # PUT /users/1
  # PUT /users/1.json
def update
    # @user = User.find_by_id(params[:id])
    @user.username = params[:username]

    if @user.save
            redirect_to users_url
          else
      render 'edit'
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    # @user = User.find_by_id(params[:id])
    @user.destroy
        redirect_to users_url
  end
end
