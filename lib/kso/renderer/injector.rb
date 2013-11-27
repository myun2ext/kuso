module Kso
  module Renderer
    module Injector
      def inject(data)
        data.gsub(/#\{(.+?)\}/m) { eval($1) }
      end
    end
  end
end
