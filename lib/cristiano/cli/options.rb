# frozen_string_literal: true

module Cristiano
  module CLI
    Options =
      Struct.new(:count, :help, :version) do
        def self.default = new(count: 1, help: false, version: false)
        def self.from(args) = default.tap { |options| Parser.parse(args, into: options) }

        def help? = help
        def version? = version
      end
  end
end
