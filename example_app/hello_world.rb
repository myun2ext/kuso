$:.unshift("../lib")
require 'kso'

class ExampleApp < Kso::Application
  class Renderer
    class TemplateRender < Kso::Renderer::TemplateRender
      def title=(value)
        @title = value
      end

      def title
        @title
      end
    end
  end
end

module Kso::Renderer
  def template_render
    @template_render ||= ExampleApp::Renderer::TemplateRender.new
  end
end
ExampleApp.run!
