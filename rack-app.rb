require "rack"

class Application
  def call(env)
    status = 200
    headers = { 'Content-Type' => 'text/html' }
    body = ['Welcome! This is our first Rack app! <3']

    [status, headers, body]
  end
end

Rack::Handler::WEBrick.run Application.new
