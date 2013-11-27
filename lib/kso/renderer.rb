require "kso/renderer/template_file_pool"
module Kso
  module Renderer
    def render(name)
      template_render(name)
    end

    def template_render
      @template_render ||= TemplateRender.new
    end
  end
end
