module Kso
end
require "kso/file/loader"
require "kso/renderer"
require "sinatra"

class Kso::Application
  loader = Kso::File::Loader.new
  include Kso::Renderer
end
