# desc "Explaining what the task does"
# task :blog do
#   # Task goes here
# end
require 'fileutils'

desc "Explaining what the task does"
task "install:schemafiles" do
  from = File.expand_path('../../../db/schema', __FILE__)
  to = "#{Rails.root}/db/schema"

  FileUtils.mkdir_p(to)
  Dir.glob("#{from}/*").each { |f| FileUtils.cp(f, to) }
end
