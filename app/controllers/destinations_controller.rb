class DestinationsController < ActionController::API
  before_action :authenticate_user!

  def show
    @destination = Destination.find(params[:id])
    render json: @destination
  end

  def create
    @destination = Destination.new({ name: params[:name] })
    if @destination.save
      render json: "Destination successfully created"
    else
      render json: "Something went wrong"
    end
  end

  def index
    @destinations = Destination.all
    render json: @destinations
  end
end

