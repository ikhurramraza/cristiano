# frozen_string_literal: true

RSpec.describe Cristiano::CLI::Options do
  describe ".default" do
    describe "help" do
      subject { described_class.default.help }

      it { is_expected.to be false }
    end

    describe "version" do
      subject { described_class.default.version }

      it { is_expected.to be false }
    end

    describe "count" do
      subject { described_class.default.count }

      it { is_expected.to be 1 }
    end
  end

  describe ".from" do
    subject(:options) { described_class.from(args) }

    context "when args are empty" do
      let(:args) { [] }

      it "returns default options" do
        expect(options).to eq(described_class.default)
      end
    end

    context "when -n option is passed" do
      let(:args) { %w[-n10] }

      it "returns correct count value" do
        expect(options.count).to eq(10)
      end
    end

    context "when --count option is passed" do
      let(:args) { %w[--count=10] }

      it "returns correct count value" do
        expect(options.count).to eq(10)
      end
    end
  end
end
