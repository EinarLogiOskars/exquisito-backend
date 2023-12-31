class ApplicationController < ActionController::API
        # might need to uncomment the line below to bypass CSRF
        # skip_forgery_protection
        include DeviseTokenAuth::Concerns::SetUserByToken
        before_action :configure_permitted_parameters, if: :devise_controller?
        respond_to :json

        protected

        def configure_permitted_parameters
                devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :first_name, :last_name])
        end
end
