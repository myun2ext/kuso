require "kso/renderer"

module Kso
  class Application < Sinatra::Base
    include Renderer
    register Sinatra::Reloader

    get '/' do
      render :index
    end
  end
end