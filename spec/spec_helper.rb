# frozen_string_literal: true

require "cristiano"

RSpec.configure do |config|
  config.disable_monkey_patching!
  config.example_status_persistence_file_path = ".rspec_status"

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end

Dir["spec/support/*.rb"].each { |f| require f.delete_prefix("spec/") }
