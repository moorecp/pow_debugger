require 'pow_debugger'
require 'rails'
module PowDebugger
  class Railtie < Rails::Railtie
    railtie_name :pow_debugger

    rake_tasks do
      load "tasks/pow_debugger.rake"
    end

    initializer "pow_debugger.start_debugger" do
      if (Rails.env.development? || Rails.env.test?) && !$rails_rake_task
        Debugger.settings[:autoeval] = true
        Debugger.settings[:autolist] = 1
        Debugger.settings[:reload_source_on_change] = true
        Debugger.start_remote(nil, PowDebugger::DEBUGGER_PORT)
      end
    end
  end
end
