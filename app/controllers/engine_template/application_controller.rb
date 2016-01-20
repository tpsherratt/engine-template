# nb. The entire controllers directory can (should) be deleted if you're writing
#     a domain engine (eg. Users)
module EngineTemplate
  class ApplicationController < ActionController::Base
    # include any concerns here that provide functionality needed for your
    # controllers, that is provided by other engines.
    # eg. you probably need to use users/authentication, so uncomment the below:

    # include ApiBase::Concerns::ApplicationControllerBase
    # include Users::Concerns::ApplicationControllerAuthentication 
  end
end
