module Skyslope

  class Configuration
    attr_accessor :api_url

    def initialize
      @api_url  = 'https://api.skyslope.com/'
    end
  end

  class << self

    def configuration
      @configuration ||= Configuration.new
    end

    def self.configuration=(config)
      @configuration = config
    end

    def configure
      yield(configuration)
    end

  end
end
