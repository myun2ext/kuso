require "kso/renderer/injector"
require "kso/renderer/template_file_pool"
require "kso/renderer/missing_template"

module Kso
  module Renderer
    class TemplateRender
      include Injector
      include MissingTemplate

      def render(name)
        template = template_at(name)
        inject(template)
      end

      def templates
        @templates ||= TemplateFilePool.new
      end

      def template_at(name)
        templates.at(name)
      end

      def exist_template?(name)
        templates.exist?(name)
      end

      def method_missing(method, *args)
        if exist_template?(method)
          render(method)
        else
          super
        end
      end

      def missing_in_template(method, *args)
        if exist_template?(method)
          render(method)
        else
          raise #method_missing(method, *args)
        end
      end
    end
  end
end
