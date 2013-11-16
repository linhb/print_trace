Gem::Specification.new do |s|
  s.name        = 'print_trace'
  s.version     = '0.0.1'
  s.date        = '2013-11-15'
  s.summary     = "See what line of code ruby is executing right now!"
  s.description = "After installing and reloading your code, start a Ruby console and run `Process.kill('USR1', pid)` where pid is the process ID of the ruby process you want to look into.  "
  s.authors     = ["Linh Bui"]
  s.email       = 'rubygems@linhdbui.com'
  s.files       = ["lib/print_trace.rb"]
  # s.homepage    =
    'http://github.com/linhb/print_trace'
  s.license       = 'MIT'
  
  s.add_dependency "railties"
end