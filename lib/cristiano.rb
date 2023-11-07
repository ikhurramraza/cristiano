# frozen_string_literal: true

autoload(:OptionParser, "optparse")

module Cristiano
  autoload(:ART, "cristiano/art")
  autoload(:CLI, "cristiano/cli")
  autoload(:VERSION, "cristiano/version")

  module CLI
    autoload(:Parser, "cristiano/cli/parser")
    autoload(:Runner, "cristiano/cli/runner")
    autoload(:Options, "cristiano/cli/options")
  end
end
