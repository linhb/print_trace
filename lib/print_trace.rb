Signal.trap("USR1") do
  File.open(File.join(Rails.root, "log", "print_trace.log"), "a") do |f|
    f.write(Time.now)
    f.write(Thread.current.backtrace.join("\n"))    
  end
end
def print_trace(pid)
  Process.kill("USR1", pid)
end