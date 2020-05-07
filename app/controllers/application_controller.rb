# frozen_string_literal: true

class ApplicationController < ActionController::API
  before_action :restrict_content_type

  rescue_from StandardError do |exception|
    render(json: {
             errors: RailsService::Errors.from_exception(exception)
           },
           status: :internal_server_error)
  end

  private

  def restrict_content_type
    return if request.content_type == 'application/vnd.api+json'

    render(json: {
             message: 'Content-Type must be application/vnd.api+json'
           },
           status: :not_acceptable)
  end
end
