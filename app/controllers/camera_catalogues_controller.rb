class CameraCataloguesController < ApplicationController
  # GET /camera_catalogues
  # GET /camera_catalogues.json
  def index
    @camera_catalogues = CameraCatalogue.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @camera_catalogues }
    end
  end

  # GET /camera_catalogues/1
  # GET /camera_catalogues/1.json
  def show
    @camera_catalogue = CameraCatalogue.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @camera_catalogue }
    end
  end

  # GET /camera_catalogues/new
  # GET /camera_catalogues/new.json
  def new
    @camera_catalogue = CameraCatalogue.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @camera_catalogue }
    end
  end

  # GET /camera_catalogues/1/edit
  def edit
    @camera_catalogue = CameraCatalogue.find(params[:id])
  end

  # POST /camera_catalogues
  # POST /camera_catalogues.json
  def create
    @camera_catalogue = CameraCatalogue.new(params[:camera_catalogue])

    respond_to do |format|
      if @camera_catalogue.save
        format.html { redirect_to @camera_catalogue, notice: 'Camera catalogue was successfully created.' }
        format.json { render json: @camera_catalogue, status: :created, location: @camera_catalogue }
      else
        format.html { render action: "new" }
        format.json { render json: @camera_catalogue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /camera_catalogues/1
  # PUT /camera_catalogues/1.json
  def update
    @camera_catalogue = CameraCatalogue.find(params[:id])

    respond_to do |format|
      if @camera_catalogue.update_attributes(params[:camera_catalogue])
        format.html { redirect_to @camera_catalogue, notice: 'Camera catalogue was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @camera_catalogue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /camera_catalogues/1
  # DELETE /camera_catalogues/1.json
  def destroy
    @camera_catalogue = CameraCatalogue.find(params[:id])
    @camera_catalogue.destroy

    respond_to do |format|
      format.html { redirect_to camera_catalogues_url }
      format.json { head :no_content }
    end
  end
end
