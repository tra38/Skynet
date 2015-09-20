require_relative '../lib/any'

describe "#any" do
	describe "when delaing with a single array" do
		before(:each) do
			@array = [0,1,2,3,4,5]
		end

		it "returns an element from the array" do
			number = @array.any
			expect(@array.include?(number)).to be true
		end

		it "will return unique elements from that array" do
			output_array = []
			6.times do
				output_array << @array.any
			end
			output_array.sort!
			expect(output_array).to eq (@array)
		end

		it "will return unique elements again after returning all unique elements once" do
			two_arrays = @array * 2
			output_array = []
			12.times do
				output_array << @array.any
			end
			output_array.sort!
			two_arrays.sort!
			expect(output_array).to eq(two_arrays)
		end
	end

	describe "when dealing with multiple nested arrays" do
		before(:each) do
			@array_of_arrays = [[0,1,2],[3,4,5],[6,7,8]]
		end

		it "will return unique elements from all arrays" do
			output_array = []
			9.times do
				output_array << @array_of_arrays.any 
			end
			output_array.sort!
			expect(output_array).to eq([0,1,2,3,4,5,6,7,8])
		end
	end

end