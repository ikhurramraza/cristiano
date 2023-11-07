# frozen_string_literal: true

module Cristiano
  module CLI
    PROGRAM_NAME = "cristiano"

    def self.run(args)
      Runner.new(args).call
    end
  end
end
