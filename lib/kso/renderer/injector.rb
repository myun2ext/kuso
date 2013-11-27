module Kso
  module Renderer
    module Injector
      def inject(data)
        data.gsub(/#\{(.+?)\}/) { eval($1) }
      end
    end
  end
end
