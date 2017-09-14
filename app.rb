require_relative 'config/boot'

class App < Sinatra::Base
  register Sinatra::Contrib

  get '/' do
    send_file File.expand_path('index.html', settings.public_folder)
  end

  not_found do
    content_type :json
    { status: 404, message: "Resource not found." }.to_json
  end
end
