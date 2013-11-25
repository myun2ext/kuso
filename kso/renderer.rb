module Kso::Renderer
  def render(name, *opts)
    loader.at(name + ".html")
  end
end
