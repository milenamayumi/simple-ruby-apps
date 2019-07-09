require "rack"

app = Proc.new do |env|
  [ 200, { "Content-Type" => "text/plain" },
    ["This is our improved Rack app! <3"] ]
end

Rack::Handler::WEBrick.run app
