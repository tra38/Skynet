class Array
	def smart_sample
		if (@possible_choices == nil || @possible_choices == [])
			@possible_choices = self.dup.shuffle!
		end
		item = @possible_choices.shift
		if item.is_a?(Array)
			item.smart_sample
		else
			item
		end
	end
end