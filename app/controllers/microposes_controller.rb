class MicroposesController < ApplicationController
  # GET /microposes
  # GET /microposes.json
  def index
    @microposes = Micropose.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @microposes }
    end
  end

  # GET /microposes/1
  # GET /microposes/1.json
  def show
    @micropose = Micropose.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @micropose }
    end
  end

  # GET /microposes/new
  # GET /microposes/new.json
  def new
    @micropose = Micropose.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @micropose }
    end
  end

  # GET /microposes/1/edit
  def edit
    @micropose = Micropose.find(params[:id])
  end

  # POST /microposes
  # POST /microposes.json
  def create
    @micropose = Micropose.new(params[:micropose])

    respond_to do |format|
      if @micropose.save
        format.html { redirect_to @micropose, notice: 'Micropose was successfully created.' }
        format.json { render json: @micropose, status: :created, location: @micropose }
      else
        format.html { render action: "new" }
        format.json { render json: @micropose.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /microposes/1
  # PUT /microposes/1.json
  def update
    @micropose = Micropose.find(params[:id])

    respond_to do |format|
      if @micropose.update_attributes(params[:micropose])
        format.html { redirect_to @micropose, notice: 'Micropose was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @micropose.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /microposes/1
  # DELETE /microposes/1.json
  def destroy
    @micropose = Micropose.find(params[:id])
    @micropose.destroy

    respond_to do |format|
      format.html { redirect_to microposes_url }
      format.json { head :no_content }
    end
  end
end
