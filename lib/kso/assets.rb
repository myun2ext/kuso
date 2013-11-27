module Kso
  module Assets
    class Body
      def javascripts
        []
      end
      def stylesheets
        []
      end
    end
    
    def assets
      @assets ||= Body.new
    end
  end
end
