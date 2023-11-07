# frozen_string_literal: true

module Cristiano
  module CLI
    Parser =
      OptionParser.new do |opts|
        opts.banner = "USAGE: #{PROGRAM_NAME} [OPTIONS]"
        opts.separator ""

        opts.version = "#{PROGRAM_NAME} #{VERSION}"

        opts.separator "OPTIONS:"
        opts.on("-n", "--count COUNT", Integer, "Number of times the art should be printed")
        opts.on("-v", "--version", "Show the version")
        opts.on("-h", "--help", "Show this help message")
        opts.separator ""

        opts.separator "EXAMPLES:"
        opts.separator "  #{PROGRAM_NAME}"
        opts.separator "  #{PROGRAM_NAME} -n10"
        opts.separator "  #{PROGRAM_NAME} -count=10"
      end
  end
end
