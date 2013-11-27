require "kso/renderer/injector"
require "kso/renderer/template_file_pool"

module Kso
  module Renderer
    include Injector

    def render(name)
      templates.at(name)
    end

    def templates
      @templates ||= TemplateFilePool.new
    end
  end
end
