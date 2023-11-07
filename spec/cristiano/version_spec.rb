# frozen_string_literal: true

RSpec.describe "Cristiano::VERSION" do
  subject(:version) { Cristiano::VERSION }

  it { is_expected.to eq("1.0.0") }
end
