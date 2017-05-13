require 'middleman-core/load_paths'
::Middleman.setup_load_paths

require 'middleman-core'
require 'middleman-core/rack'

require 'fileutils'
FileUtils.mkdir('log') unless File.exist?('log')
::Middleman::Logger.singleton("log/#{ENV['RACK_ENV']}.log")

# if ENV['RACK_ENV'] == 'production'
#   use Rack::Auth::Basic, "Restricted Area" do |username, password|
#     [username, password] == [ENV['HTTP_USER'], ENV['HTTP_PASS']]
#   end
# end

app = ::Middleman::Application.new

run ::Middleman::Rack.new(app).to_app
