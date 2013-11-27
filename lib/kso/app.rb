require "kso/renderer"
require "kso/assets"

module Kso
  class Application < Sinatra::Base
    include Renderer
    include Assets

    configure do
      register Sinatra::Reloader
    end

    get '/' do
      render :index
    end
  end
end