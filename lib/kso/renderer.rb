require "kso/renderer/template_render"
module Kso
  module Renderer
    def render(name)
      template_render.render(name)
    end

    def template_render
      @template_render ||= TemplateRender.new
    end
  end
end
