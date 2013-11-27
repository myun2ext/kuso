module Kso
  module Renderer
    class TemplateFiles
      @templates = {}

      def load(name)
        @templates[name] = File.read(find_of(name))
      end

      private

      def find_of(name)
        name + ".html"
      end
    end
  end
end
