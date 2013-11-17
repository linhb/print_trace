Signal.trap("USR1") do
  get_trace
end
def get_trace
  trace = Thread.current.backtrace.join("\n")
  File.open(File.join(Rails.root, "log", "print_trace.log"), "a") do |f|
    f.write("****** #{Time.now} ******\n")
    f.write("Instance variables:\n")
    instance_variables.each do |v| 
      f.write("#{v}:\t#{eval(v.to_s).inspect}\n")
    end
    f.write("Local variables:\n")
    local_variables.each do |v| 
      f.write("#{v}:\t#{eval(v.to_s).inspect}\n")
    end
    f.write("Backtrace:\n")
    f.write(trace)    
  end    
  trace
end
def print_trace(pid)
  Process.kill("USR1", pid)
end
