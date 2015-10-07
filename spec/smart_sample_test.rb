require_relative '../lib/skynet/smart_sample.rb'

describe "#smart_sample" do
	describe "when delaing with a single array" do
		before(:each) do
			@array = [0,1,2,3,4,5]
		end

		it "returns an element from the array" do
			number = @array.smart_sample
			expect(@array.include?(number)).to be true
		end

		it "will return unique elements from that array" do
			output_array = []
			6.times do
				output_array << @array.smart_sample
			end
			output_array.sort!
			expect(output_array).to eq (@array)
		end

		it "will return unique elements again after returning all unique elements once" do
			two_arrays = @array * 2
			output_array = []
			12.times do
				output_array << @array.smart_sample
			end
			output_array.sort!
			two_arrays.sort!
			expect(output_array).to eq(two_arrays)
		end
	end

	describe "when dealing with multiple nested arrays" do
		before(:each) do
			@array_one = [0,1,2]
			@array_two = [3,4,5]
			@array_three = [6,7,8]
			@array_of_arrays = [@array_one,@array_two,@array_three]
		end

		it "will return unique elements from all arrays" do
			output_array = []
			9.times do
				output_array << @array_of_arrays.smart_sample
			end
			output_array.sort!
			expect(output_array).to eq([0,1,2,3,4,5,6,7,8])
		end

		it "will return one element from each inner array" do
				output_array = []
				3.times do
					output_array << @array_of_arrays.smart_sample
				end
				expect(output_array.length).to eq(3)
				expect((output_array&@array_one).length).to eq(1)
				expect((output_array&@array_two).length).to eq(1)
				expect((output_array&@array_three).length).to eq(1)
			end
	end

end