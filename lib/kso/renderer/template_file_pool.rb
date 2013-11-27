module Kso
  module Renderer
    class TemplateFilePool
      def initialize
        @templates = {}
      end

      def read(name)
        File.read(find_of(name))
      end

      def load(name)
        @templates[name] ||= read(name)
      end

      def at(name)
        load(name)
      end

      def exist?(name)
        File.exist?(find_of(name))
      end

      private

      def find_of(name)
        name = name.to_s
        name + ".html"
      end
    end
  end
end
