class CarsController < ApplicationController
  before_action :authorize
  before_action :set_car, only: [:show, :edit, :update, :destroy]

  # GET /cars
  # GET /cars.json
  def index
    @cars = Car.all
  end

  # GET /cars/1
  # GET /cars/1.json
  def show
  end

  # GET /cars/new
  def new
    @car = Car.new
  end

  # GET /cars/1/edit
  def edit
  end

  # POST /cars
  # POST /cars.json
  def create
    @car = Car.new(car_params)

    if @car.save
      current_user.cars << @car
      redirect_to user_cars_path, notice: 'Car was successfully created.'
    else
      redirect_to new_user_car_path
    end
  end

  # PATCH/PUT /cars/1
  # PATCH/PUT /cars/1.json
  def update
    if @car.update(car_params)
      redirect_to user_cars_path, notice: 'Car was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /cars/1
  # DELETE /cars/1.json
  def destroy
    @car.destroy
    respond_to do |format|
      format.html { redirect_to user_cars_url, notice: 'Car was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car
      @car = Car.find(params[:id])
    end

    def set_nickname
      params[:car][:nickname] = "#{params[:car][:year].to_s} #{params[:car][:make]} #{params[:car][:model]}" if params[:car][:nickname].empty?
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def car_params
      set_nickname
      params.require(:car).permit(:make, :model, :year, :color, :nickname, :license_plate_number, :longitude, :latitude, :user)
    end
end
