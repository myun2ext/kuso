module Kso
  module Db
    class Manager
      def self.connect(params)
        params = params.dup
        driver = params.delete(:driver).to_s

        load_driver(driver)

        driver_class(driver).new(params)
      end

      def self.load_driver(driver_name)
        driver_path = "kso/db/connector/" + driver
        require driver_path
      end

      def self.driver_class(driver_name)
        class_name = self.snake_to_camel(driver_name)
        Object.const_get(class_name)
      end

      def self.snake_to_camel(s)
        s.split('_').map { |token| token.capitalize }.join('')
      end
    end
  end
end