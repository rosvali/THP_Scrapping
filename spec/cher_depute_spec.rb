require_relative "../lib/cher_depute"

describe "depute fonction" do
		it "depute should display an array whitout nil" do
				expect(depute.is_a? Array).to eq true
				expect(depute.all? { |elem| elem.class == Hash}).to be true
		end
		it "depute has at least 2 depute" do 
				expect((depute[0]).value?("Damien")).to eq true
				expect((depute[1]).value?("Caroline")).to eq true
		end
end
