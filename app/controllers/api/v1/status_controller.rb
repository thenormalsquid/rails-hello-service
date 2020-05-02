module Api
  module V1
    class StatusController < ApplicationController
      def index
        render json: { current_status: 'ok' }
      end
    end
  end
end
