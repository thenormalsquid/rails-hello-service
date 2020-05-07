# frozen_string_literal: true

module Api
  module V1
    class StatusController < ApplicationController
      def index
        render json: {
          data: {
            type: 'status',
            attributes: {
              message: 'ok'
            }
          }
        }
      end
    end
  end
end
