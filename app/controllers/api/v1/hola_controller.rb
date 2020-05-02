module Api
  module V1
    class HolaController < ApplicationController
      def index
        render json: { message: "Hola!" }
      end
    end
  end
end
