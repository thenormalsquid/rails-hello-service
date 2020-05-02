class ApplicationController < ActionController::API

  rescue_from StandardError do |exception|
    render json: { errors: RailsService::Errors.from_exception(exception) }, status: :internal_server_error
  end
end
