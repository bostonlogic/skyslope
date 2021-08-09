require "skyslope/version"
require 'skyslope/configuration'
require 'resource_kit'
require 'kartograph'

module Skyslope

  autoload :Client, 'skyslope/client'

  autoload :BaseModel, 'skyslope/models/base_model'

  autoload :Authentication, 'skyslope/models/authentication'
  autoload :Transaction, 'skyslope/models/transaction'
  autoload :Office, 'skyslope/models/office'
  autoload :User, 'skyslope/models/user'

  autoload :AuthenticationResource, 'skyslope/resources/authentication_resource'
  autoload :OfficeResource, 'skyslope/resources/office_resource'
  autoload :UserResource, 'skyslope/resources/user_resource'

  autoload :ErrorHandlingResourcable, 'skyslope/error_handling_resourcable'

  autoload :AuthenticationMapping, 'skyslope/mappings/authentication_mapping'
  autoload :OfficeMapping, 'skyslope/mappings/office_mapping'
  autoload :UserMapping, 'skyslope/mappings/user_mapping'

  class Error < StandardError; end
  class UnauthorizedError < Skyslope::Error; end
  class NotFoundError < Skyslope::Error; end
  class UnprocessableEntityError < Skyslope::Error; end

end
