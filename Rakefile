require "bundler/gem_tasks"

desc "Run unit tests"
task :test do
  system("for test in $(git ls-files test); do ruby $test; done")
end