class Users::RegistrationsController < Devise::RegistrationsController
  
  respond_to :json
 
  # Custom response for user registration
  # def respond_with(resource, options = {})
  #   if resource.persisted?
  #     #token = request.env['warden-jwt_auth.token']
  #     render json: {
  #       status: { code: 200, message: 'Signed up successfully', data: resource },
  #       #token: "Bearer #{token}"
  #     }, status: :ok
  #   else
  #     render plain: resource.errors.full_messages.first, status: :unprocessable_entity
  #   end
  # end
  def email_check
    user = User.find_by(email: params[:email])
    if user
      render json:{
      status: {code: 422, error: "Email already taken"}}, status: :unprocessable_entity
    end
  end

  def respond_with(resource, options = {})
    if resource.persisted?
      render json: {
        status: { code: 200, message: 'Signed up successfully', data: resource },
      }, status: :ok
    else
      # render plain: resource.errors.full_messages.first, status: :unprocessable_entity
      render json:{
        status: {code: 422, error:  resource.errors.full_messages.first
        }
      },status: :unprocessable_entity
    end
  end

  



  

  # Update user information
  def update
    user = current_user
    if user.update(user_params)
      render json: {
        status: { code: 200, message: 'User updated successfully', data: user },
        }
    else
      render json: {
        status: { code: 422, message: 'User could not be updated', errors: user.errors.full_messages }
      }, status: :unprocessable_entity
    end
  rescue ActiveRecord::RecordNotFound => error
    render json: { error: error.message }, status: :unauthorized
  end



  # Delete user account
  def destroy
    user = current_user
    user.destroy
    render json: { status: { code: 200, message: 'User deleted successfully' } }
  rescue ActiveRecord::RecordNotFound => error
    render json: { error: error.message }, status: :unauthorized
  end


  
  # Show user information
  def show
    if current_user.present?
      render json: {
        status: { code: 200, data: current_user, image_url: current_user.image.attached? ? url_for(current_user.image) : nil }
      }, status: :ok
    else
      render json: { errors: 'User not found' }, status: :not_found
    end
  end
  
  
  private
  # Strong parameters for user sign up
  def sign_up_params
    params.require(:user).permit(:email, :first_name, :last_name, :dob, :title, :password, :phone_number)
  end
  # Strong parameters for user update
  def user_params
    params.require(:user).permit(:email, :first_name, :last_name, :bio, :postal_address, :title, :dob, :travel_preferences, :phone_number, :average_rating, :image_url)
  end

end 