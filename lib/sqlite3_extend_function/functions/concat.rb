# frozen_string_literal: true

module SQLite3ExtendFunction
  module Functions
    # SQLite3ExtendFunction::Functions::Concat
    module Concat
      class << self
        # @param [Array<String>] args
        # @return [String]
        # @raise [SQLite3::SQLException]
        def call(*args)
          args.compact.join
        rescue ArgumentError
          raise SQLite3::SQLException, 'No function matches the given name and argument types. ' \
            'You might need to add explicit type casts.'
        end
      end
    end
  end
end
