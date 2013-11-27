require "kso/renderer"

module Kso
  class Application < Sinatra::Base
    include Renderer

    configure do
      register Sinatra::Reloader
    end

    get '/' do
      render :index
    end
  end
end