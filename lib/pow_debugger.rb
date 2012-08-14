module PowDebugger
  DEBUGGER_PORT = Random.new(Rails.application.class.to_s.unpack('q*').first).rand(15000...65000)

  require 'pow_debugger/railtie' if defined?(Rails) && defined?(Rails::Railtie)
end
