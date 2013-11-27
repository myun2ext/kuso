require "kso/renderer"

module Kso
  class Application < Sinatra::Base
    include Renderer

    get '/' do
      'Hello world!'
    end
  end
end