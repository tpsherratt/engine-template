# If your engine has functionality it needs to make available to controllers
# in other engines, this is the place to put it.
# This class should then be included in the controllers requiring the
# functionality, an engine's application controller, if the functionality
# is required by all(/many) controllers.
# TS
module EngineTemplate
  module Concerns
    # If your concern is to be included in engine ApplicationControllers, please
    # prepend your module name with 'ApplicationController'
    module ApplicationControllerMyConcern
      extend ActiveSupport::Concern

      included do
        # Things you would put directly in the application controller
        # eg. before_filter :my_sweet_method
      end


      # methods go here that you want to make available to controllers inheriting
      # from the application controller

      # eg.
      # def my_sweet_method
      #   // do the thing
      # end

    end
  end
end