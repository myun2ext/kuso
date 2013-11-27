module Kso
  module Renderer
    class TemplateRender
      include Injector

      def render(name)
        template = templates_at(name)
        inject(template)
      end

      def templates
        @templates ||= TemplateFilePool.new
      end

      def template_at(name)
        templates.at(name)
      end
    end
  end
end
