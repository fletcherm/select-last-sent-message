require 'rubygems'
require 'bundler/setup'
Bundler.require

require 'rake/clean'
require 'erb'

BASENAME = 'select-last-sent-message'
SCRIPT_FILENAME = "#{BASENAME}.js"

PLIST_PREFIX = 'com.skeletor'
PLIST_FILENAME = "#{PLIST_PREFIX}.#{BASENAME}.plist"
PLIST_TEMPLATE = "#{PLIST_FILENAME}.erb"

rule '.js' => '.coffee' do |t|
  File.open(t.name, 'w') do |name|
    name.print CoffeeScript.compile(File.read(t.source))
  end
end

desc 'Run the script.'
task run: SCRIPT_FILENAME do
  sh "osascript -l JavaScript #{SCRIPT_FILENAME}"
end

desc 'Print help instuctions.'
task :help do
  puts "Use `rake run` to compile & run the script."
end

task default: SCRIPT_FILENAME

CLEAN.include FileList['*.js']
