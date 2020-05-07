# frozen_string_literal: true

module RailsService
  class Errors
    include Enumerable

    def initialize(individual_errors)
      @individual_errors = individual_errors
    end

    def self.from_exception(exception)
      code = exception.class.name.underscore.gsub(/_error$/, '')
      new([
            {
              code: code,
              message: exception.message
            }
          ])
    end
  end
end
