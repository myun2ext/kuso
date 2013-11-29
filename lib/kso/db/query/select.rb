module Kso
  module Db
    module Query
      module Select
        def select(columns)
          clomuns_str = clomuns_to_query_str(columns)
          "SELECT #{clomuns_str}"
        end

        def from(table)
          "FROM `#{table}`"
        end

        private

        def clomuns_to_query_str(columns)
          columns.join(", ")
        end
      end
    end
  end
end