class VehiclesController < ActionController::API
  before_action :authenticate_user!

  def show
    @vehicle = Vehicle.find(params[:id])
    render json: @vehicle
  end

  def create
    @vehicle = Vehicle.new({name: params[:name]})
    if @vehicle.save
      render json: "Vehicle create!"
    else
      render json: "Something went wrong when creating the vehicle"
    end
  end

  def index
    @vehicles = Vehicle.all
    render json: @vehicles
  end
end
