require_relative 'smart_sample.rb'

module CustomRule
	def self.generate_rule(rule_name, array_to_sample_from)
		define_singleton_method (:"#{rule_name}") do
			array_to_sample_from.smart_sample		
		end
	end
end