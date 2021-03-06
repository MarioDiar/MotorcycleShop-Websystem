class MotorcyclesController < ApplicationController
  #defining the dashboard as the layout for this controller
  layout "dashboard"
  #calling methods before any action
  before_action :set_motorcycle, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!, except: [:show]
  
  # GET /motorcycles
  # GET /motorcycles.json
  def index
    @motorcycles = Motorcycle.all
  end

  # GET /motorcycles/1
  # GET /motorcycles/1.json
  def show
  end

  # GET /motorcycles/new
  def new
    @motorcycle = Motorcycle.new
  end

  # GET /motorcycles/1/edit
  def edit
  end

  # POST /motorcycles
  # POST /motorcycles.json
  def create
    @motorcycle = Motorcycle.new(motorcycle_params)

    respond_to do |format|
      if @motorcycle.save
        format.html { redirect_to @motorcycle, notice: 'Motorcycle was successfully created.' }
        format.json { render :show, status: :created, location: @motorcycle }
      else
        format.html { render :new }
        format.json { render json: @motorcycle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /motorcycles/1
  # PATCH/PUT /motorcycles/1.json
  def update
    respond_to do |format|
      if @motorcycle.update(motorcycle_params)
        format.html { redirect_to @motorcycle, notice: 'Motorcycle was successfully updated.' }
        format.json { render :show, status: :ok, location: @motorcycle }
      else
        format.html { render :edit }
        format.json { render json: @motorcycle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /motorcycles/1
  # DELETE /motorcycles/1.json
  def destroy
    @motorcycle.destroy
    respond_to do |format|
      format.html { redirect_to motorcycles_url, notice: 'Motorcycle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

#private methods

  private
    #method that sets motorcycle depending on the parameters given
    def set_motorcycle
      @motorcycle = Motorcycle.find(params[:id])
    end

    #defining the parameters neccesary for the motorcycle
    def motorcycle_params
      params.require(:motorcycle).permit(:model, :pdf, :image, :imagetwo, :imagethree, :descriptionshort, :descriptionbig, :price)
    end
end
