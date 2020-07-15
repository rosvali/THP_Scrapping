require_relative "../lib/dark_trader"

describe "the dark_trader fonction" do
	it "should display an array" do
		expect(crypto).to be_a_kind_of Array
		expect(crypto).not_to eq nil
end