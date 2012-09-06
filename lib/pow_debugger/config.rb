module PowDebugger
  class Config
    attr_accessor :debugger_port, :enabled_environments
    def initialize
      self.debugger_port        = Random.new(Rails.application.class.to_s.unpack('q*').first).rand(15000...65000)
      self.enabled_environments = %w(development test)
    end
  end
end
