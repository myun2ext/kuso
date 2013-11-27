module Kso
  module Renderer
    class TemplateFilePool
      def initialize
        @templates = {}
      end

      def read(name)
        filename = find_of(name)
        if File.exist? filename
          File.read(filename) 
        else
          nil
        end
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
        filename = name + ".html"
        if File.exist?(filename)
          filename
        else
          find_partial_of(name)
        end
      end

      def find_partial_of(name)
        name = name.to_s
        filename = "_" + name + ".html"
        #if File.exist?(name)
        filename
        #else
        #  nil
        #end
      end
    end
  end
end
