require 'pow_debugger/config'
module PowDebugger
  class << self
    def config
      @config ||= Config.new
    end

    def configure
      yield self.config
    end
  end
end

require 'pow_debugger/railtie' if defined?(Rails) && defined?(Rails::Railtie)
