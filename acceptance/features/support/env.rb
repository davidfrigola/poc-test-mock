require 'httparty'
require 'service_mock'

@wiremock_server = ServiceMock::Server.new('standalone-2.19.0','../mock/wiremock')

def start_wiremock(mappings_folder)
  puts "Mock mappings folder : "+mappings_folder
  @wiremock_server.start do |server|
    server.port = 3000
    server.verbose = true
    server.root_dir = './'+mappings_folder
  end
  puts "Wiremock server started"

end

mock_strategy = ENV['strategy']||'simple'

start_wiremock(mock_strategy)

sleep 5


at_exit do

  @wiremock_server.stop

end
