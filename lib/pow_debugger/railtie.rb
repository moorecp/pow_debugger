module PowDebugger
  class Railtie < Rails::Railtie
    railtie_name :pow_debugger

    rake_tasks do
      load "tasks/pow_debugger.rake"
    end

    config.after_initialize do
      if PowDebugger.config.enabled_environments.include?(Rails.env) && !$rails_rake_task
        Debugger.settings[:autoeval] = true
        Debugger.settings[:autolist] = 1
        Debugger.settings[:reload_source_on_change] = true
        begin
          Debugger.start_remote(nil, PowDebugger.config.debugger_port)
        rescue Errno::EADDRINUSE
        end
      end
    end
  end
end
