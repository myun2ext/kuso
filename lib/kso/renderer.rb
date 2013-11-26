module Kso
  module Renderer
    def render(data)
      data.gsub(/#\{(.+?)\}/) { eval($1) }
    end
  end
end
