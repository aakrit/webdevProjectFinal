class UserdetailsController < ApplicationController
  # GET /userdetails
  # GET /userdetails.json
  def index
    @userdetails = Userdetail.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @userdetails }
    end
  end

  # GET /userdetails/1
  # GET /userdetails/1.json
  def show
    @userdetail = Userdetail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @userdetail }
    end
  end

  # GET /userdetails/new
  # GET /userdetails/new.json
  def new
    @userdetail = Userdetail.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @userdetail }
    end
  end

  # GET /userdetails/1/edit
  def edit
    @userdetail = Userdetail.find(params[:id])
  end

  # POST /userdetails
  # POST /userdetails.json
  def create
    @userdetail = Userdetail.new(params[:userdetail])

    respond_to do |format|
      if @userdetail.save
        format.html { redirect_to @userdetail, notice: 'Userdetail was successfully created.' }
        format.json { render json: @userdetail, status: :created, location: @userdetail }
      else
        format.html { render action: "new" }
        format.json { render json: @userdetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /userdetails/1
  # PUT /userdetails/1.json
  def update
    @userdetail = Userdetail.find(params[:id])

    respond_to do |format|
      if @userdetail.update_attributes(params[:userdetail])
        format.html { redirect_to @userdetail, notice: 'Userdetail was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @userdetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /userdetails/1
  # DELETE /userdetails/1.json
  def destroy
    @userdetail = Userdetail.find(params[:id])
    @userdetail.destroy

    respond_to do |format|
      format.html { redirect_to userdetails_url }
      format.json { head :no_content }
    end
  end
end
