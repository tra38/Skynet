require_relative '../lib/skynet/generate_rule.rb'

describe "generate_rule" do
	it "will successfully create a class method that will 'smart_sample' from an array" do
		number_array = [1,2,3,4,5]
		output_array = []
		CustomRule.generate_rule("random_number", number_array)
		5.times { output_array << CustomRule.random_number }
		output_array.sort!
		expect(output_array).to eq(number_array)
	end
end