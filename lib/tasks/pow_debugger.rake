desc "This task connects the remote debugger on the correct port"
task :debugger => :environment do
  Debugger.start_client('localhost', PowDebugger.config.debugger_port)
end
