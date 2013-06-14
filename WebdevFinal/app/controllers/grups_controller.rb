class GrupsController < ApplicationController
  # GET /grups
  # GET /grups.json
  def index
    @grups = Grup.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @grups }
    end
  end

  # GET /grups/1
  # GET /grups/1.json
  def show
    @grup = Grup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @grup }
    end
  end

  # GET /grups/new
  # GET /grups/new.json
  def new
    @grup = Grup.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @grup }
    end
  end

  # GET /grups/1/edit
  def edit
    @grup = Grup.find(params[:id])
  end

  # POST /grups
  # POST /grups.json
  def create
    @grup = Grup.new(params[:grup])

    respond_to do |format|
      if @grup.save
        format.html { redirect_to @grup, notice: 'Grup was successfully created.' }
        format.json { render json: @grup, status: :created, location: @grup }
      else
        format.html { render action: "new" }
        format.json { render json: @grup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /grups/1
  # PUT /grups/1.json
  def update
    @grup = Grup.find(params[:id])

    respond_to do |format|
      if @grup.update_attributes(params[:grup])
        format.html { redirect_to @grup, notice: 'Grup was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @grup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grups/1
  # DELETE /grups/1.json
  def destroy
    @grup = Grup.find(params[:id])
    @grup.destroy

    respond_to do |format|
      format.html { redirect_to grups_url }
      format.json { head :no_content }
    end
  end
end
