# frozen_string_literal: true

require_relative "lib/cristiano/version"

Gem::Specification.new do |spec|
  spec.name = "cristiano"
  spec.version = Cristiano::VERSION
  spec.authors = ["Khurram Raza"]
  spec.email = ["ikhurramraza@gmail.com"]

  spec.summary = "CLI tool to celebrate the G.O.A.T."
  spec.description = "CLI tool to celebrate the G.O.A.T."
  spec.homepage = "https://github.com/ikhurramraza/cristiano.git"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.1"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["rubygems_mfa_required"] = "false"

  spec.files =
    Dir.chdir(__dir__) do
      `git ls-files -z`.split("\x0")
        .reject do |f|
          (File.expand_path(f) == __FILE__) ||
            f.start_with?(*%w[bin/ spec/ .git Gemfile])
        end
    end

  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
