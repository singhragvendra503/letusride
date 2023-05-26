class SearchesController < ApplicationController
  before_action :authenticate_user!
  # def search
  #   source_latitude = params[:search_source_lat].to_f
  #   source_longitude = params[:search_source_long].to_f
  #   destination_latitude = params[:search_destination_lat].to_f
  #   destination_longitude = params[:search_destination_long].to_f
  #   pass_count = params[:pass_count].to_i
  #   date = params[:date].to_date

  #   # Calculate the search radius
  #   source_radius = 10# km
  #   destination_radius = 10 # km

  #   # Search for publishes within the specified radius
  #   @publishes = Publish.within_radius(source_latitudeitude, source_longitude, source_radius, destination_latitude, destination_longitude, destination_radius)
  #                       .where('passengers_count >= ?', pass_count)
  #                       .where('date >= ?', date)
            



  #   render json: @publishes
  # end










  def search
    source_rides = Publish.near([params[:source_latitude], params[:source_longitude]], 5, units: :km,latitude: :source_latitude, longitude: :source_longitude).where(date: params[:date]).where('passengers_count> 0').where('passengers_count >= ?', params[:passengers_count].to_i).where('user_id != ?',current_user.id).where('status = ?', "pending")
    destination_rides = Publish.near([params[:destination_latitude], params[:destination_longitude]], 5, units: :km,latitude: :destination_latitude, longitude: :destination_longitude)
    @publishes = source_rides & destination_rides

    if @publishes.length >0
      render json: @publishes
    else 
      render json: "No rides found"
    end
  end
end
