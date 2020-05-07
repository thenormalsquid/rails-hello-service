# frozen_string_literal: true

module Api
  module V1
    class HolaController < ApplicationController
      def index
        render json: {
          data: {
            type: 'hello',
            attributes: {
              message: 'Hola!'
            }
          }
        }
      end
    end
  end
end
