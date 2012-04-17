require 'rubygems'
require 'bundler'
require './lib/openehr'

begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "openehr"
  gem.homepage = "http://github.com/skoba/ruby-impl-openehr"
  gem.license = "Apache 2.0 license"
  gem.summary = %Q{Ruby implementation of the openEHR specification}
  gem.description = %Q{This project is an implementation of the openEHR specification on Ruby.}
  gem.email = "skoba@moss.gr.jp"
  gem.authors = ["Shinji KOBAYASHI", "Akimichi Tatsukawa"]
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new

require 'rspec/core'
require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = FileList['spec/**/*_spec.rb']
end

task :default => :spec

require 'rdoc/task'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "gempack #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
