module RailsService
  class Errors 
    include Enumerable

    def self.from_exception(exception)
      code = exception.class.name.underscore.gsub(/_error$/,'')
      self.new([
        { 
          code: code,
          message: exception.message
        }
      ])
    end
  end
end