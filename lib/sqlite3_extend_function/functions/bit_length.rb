# frozen_string_literal: true

module SQLite3ExtendFunction
  module Functions
    # SQLite3ExtendFunction::Functions::Cbrt
    module BitLength
      class << self
        # @return [String]
        def name
          'bit_length'
        end

        # @return [void]
        def call(func, str)
          func.result = str.bytesize * 8
        rescue ArgumentError
          raise SQLite3::SQLException,
                'No function matches the given name and argument types. ' \
                'You might need to add explicit type casts.'
        end
      end
    end
  end
end
