# frozen_string_literal: true

RSpec.describe "Cristiano::CLI::Parser" do
  describe ".version" do
    subject(:version) { Cristiano::CLI::Parser.version }

    it "returns the program name and version" do
      expect(version).to eq "#{Cristiano::CLI::PROGRAM_NAME} #{Cristiano::VERSION}"
    end
  end

  describe ".help" do
    subject(:help) { Cristiano::CLI::Parser.help }

    it "returns the help text" do
      expect(help).to eq(FixturesTestHelper.get("help.txt"))
    end
  end
end
