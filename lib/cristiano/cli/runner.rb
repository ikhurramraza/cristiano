# frozen_string_literal: true

module Cristiano
  module CLI
    class Runner
      def initialize(args)
        @args = args
        @options = Options.from(args)
      end

      def call
        case options
        in help: true
          Parser.help.display
        in version: true
          Parser.version.display
        else
          options.count.times { print("\n#{ART}\n") }
        end
      end

      private

      attr_reader :options, :args
    end
  end
end
