class PublishesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_publish, only: [:show, :update, :destroy]
  
  # GET /publishes
  def index
    @publishes = Publish.all.where(user_id:current_user.id)

    render json: @publishes
  end

  

  # GET /publishes
  # def show
  #   render json: @publish
  # end

  def show
    @rides = Passenger.where(publish_id: @publish.id)
    @user = User.find_by(id: @publish.user_id)
    @vehicle = Vehicle.find_by(id: @publish.vehicle_id)
    passengers = []
    @rides.each do |ride|
      user = User.find_by(id: ride.user_id)
      passengers << user.first_name if user.present?
    end
    render json: {
      status: 200,
      data: @publish,
      first_name: @user.first_name,
      passengers: passengers,
      vehicle_name: @vehicle.vehicle_name,
      vehicle_color: @vehicle.vehicle_color
    }
  end
  
  



  # POST /publishes
  def create
    @publish = current_user.publishes.new(publish_params)

    if current_user.vehicles.exists?(id: @publish.vehicle_id)
      @publish.status = "pending" # Set initial status to "pending"

      if @publish.save
        render json: @publish, status: :created
      else
        render json: @publish.errors, status: :unprocessable_entity
      end
    else
      render json: { error: 'Invalid vehicle_id' }, status: :unprocessable_entity
    end
  end
  
  
  
  
  
  






  # PATCH/PUT /publishes/1
  def update
    if @publish.update(publish_params)
      render json: @publish
    else
      render json: @publish.errors, status: :unprocessable_entity
    end
  end

 
  # DELETE /publishes/1
  def destroy
    @publish.destroy
    render json: { message: 'Publish successfully deleted.' }
  end


  def cancel_publish
    @publish = Publish.find(params[:id])
  
    if @publish.update(status: "cancelled")
      render json: { message: "Publish successfully cancelled." }
    else
      render json: @publish.errors, status: :unprocessable_entity
    end
  end



  # POST /publishes/:id/complete_publish
  def complete_publish
    @publish = Publish.find(params[:id])
      if @publish.update(status: "completed")
        render json: { message: "Ride successfully completed." }
      else
        render json: @publish.errors, status: :unprocessable_entity
      end
   
  end
  



  #filter 
  def sort_publish()
    order_by = params[:order_by]
    case order_by
    when "time"
      @publish = Publish.order(time: :asc)
    when "date"
      @publish = Publish.order(date: :asc)
    when "set_price"
      @publish = Publish.order(set_price: :asc)
    else
      @publish = Publish.all
    end
  
    render json: {
      publish: @publish
    }, status: :ok
  end
  
  





  private
  
  def set_publish
    @publish = Publish.find(params[:id])
  end

  def publish_params
    params.require(:publish).permit(:source, :destination, :source_longitude, :source_latitude, :destination_longitude, :destination_latitude, :passengers_count, :add_city, :date, :time, :set_price, :about_ride, :vehicle_id, :book_instantly, :mid_seat, :estimate_time, select_route: {})
    #.tap do |whitelisted|
    #  whitelisted[:vehicle_id] = params[:publish][:vehicle_id] if params[:publish].has_key?(:vehicle_id)
    
  end
  
end
