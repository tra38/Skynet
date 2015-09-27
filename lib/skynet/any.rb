class Array
	def any
		if (@possible_choices == nil || @possible_choices == [])
			@possible_choices = self.dup.shuffle!
		end
		item = @possible_choices.shift
		if item.is_a?(Array)
			item.any
		else
			item
		end
	end
end