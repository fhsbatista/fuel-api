class RefuelingsController < ActionController::API
  before_action :authenticate_user!

  def show
    @refueling = Refueling.find(params[:id])
    render json: @refueling
  end

  def index
    @refuelings = Refueling.all
    render json: @refuelings
  end

  def create
    @refueling = Refueling.new(refueling_params)
    if @refueling.save
      render json: "Refueling created successfully!"
    else
      render json: "Something went wrong"
    end
  end

  def refueling_params
    params.permit([:date, :quantity, :hodometer, :vehicle_id, :destination_id])
  end
end
