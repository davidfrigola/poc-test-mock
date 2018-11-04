require 'httparty'
require 'service_mock'


def start_wiremock(mappings_folder)
  unless mappings_folder == 'none'
    puts "Mock mappings folder : "+mappings_folder
    @wiremock_server = ServiceMock::Server.new('standalone-2.19.0','../mock/wiremock')
    @wiremock_server.start do |server|
      server.port = 3000
      server.verbose = true
      server.root_dir = './'+mappings_folder
    end

    sleep 5 # FIXME Is there a better way to do this?
    puts "Wiremock server started"
  end
end

mock_strategy = ENV['strategy']||'none'

start_wiremock(mock_strategy)



at_exit do
  unless mock_strategy == 'none'
   @wiremock_server.stop
  end
end
