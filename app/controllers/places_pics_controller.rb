class PlacesPicsController < ApplicationController
  before_action :set_places_pic, only: [:show, :edit, :update, :destroy]

  # GET /places_pics
  # GET /places_pics.json
  def index
    @places_pics = PlacesPic.all
  end

  # GET /places_pics/1
  # GET /places_pics/1.json
  def show
  end

  # GET /places_pics/new
  def new
    @places_pic = current_user.places_pics.build
  end

  # GET /places_pics/1/edit
  def edit
  end

  # POST /places_pics
  # POST /places_pics.json
  def create
    @places_pic = current_user.places_pics.build(places_pic_params)

    respond_to do |format|
      if @places_pic.save
        format.html { redirect_to @places_pic, notice: 'Places pic was successfully created.' }
        format.json { render :show, status: :created, location: @places_pic }
      else
        format.html { render :new }
        format.json { render json: @places_pic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /places_pics/1
  # PATCH/PUT /places_pics/1.json
  def update
    respond_to do |format|
      if @places_pic.update(places_pic_params)
        format.html { redirect_to @places_pic, notice: 'Places pic was successfully updated.' }
        format.json { render :show, status: :ok, location: @places_pic }
      else
        format.html { render :edit }
        format.json { render json: @places_pic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /places_pics/1
  # DELETE /places_pics/1.json
  def destroy
    @places_pic.destroy
    respond_to do |format|
      format.html { redirect_to places_pics_url, notice: 'Places pic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_places_pic
      @places_pic = PlacesPic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def places_pic_params
      params.require(:places_pic).permit(:title, :body, :place_id, :image)
    end
end
