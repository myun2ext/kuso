require 'mysql2'
module Kso
  module Db
    module Connector

      class Mysql2 < Mysql2::Client
        #def initialize(params)
        #  @client = Mysql2::Client.new(params)
        #end
      end
    end
  end
end
