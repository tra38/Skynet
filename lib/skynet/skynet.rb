require "skynet/version"
require 'faker'
require 'skynet/story_generator.rb'
require 'skynet/any.rb'

class Character
	attr_reader :name, :enemy, :type, :traits, :job, :job_purpose, :company

	def initialize(args)
		@type = args[:type]
		@name = args[:name]
		@purpose = args[:traits]["Purpose"]
		@motivation = args[:traits]["Motivation"]
		@methodology = args[:traits]["Methodology"]
		@evaluation = args[:traits]["Evaluation"]
		@traits = [@purpose, @evaluation, @motivation, @methodology]
		@enemy = args[:enemy]
		@job = Faker::Name.title
		@job_purpose = Faker::Company.bs
		@company = Faker::Company.name
	end

	def action
		WORDS_DATA["SelfVerbs"][traits.any].any
	end

end


character_array = []

CHARACTERS.each do |character|
	character_array << Character.new(type: character[0], name: character[1]["Name"], traits: character[1], enemy: character[1]["Enemy"])
end


##Search within the array to find a 'Character' object and delete it from the array,
##while returning that 'Character' object, so that it can be stored in an array! 
def find_and_return(array, target_character)
	array.length
	array.each_with_index do |character, index|
		if character.name == target_character["Name"]
			return array.delete(character)
		end
	end
end

p character_array.length

HERO = character_array.shuffle!.pop

p character_array.length

MONSTER = find_and_return(character_array, HERO.enemy )

QUEST_GIVER = character_array.shuffle!.pop

MONSTER_KID = find_and_return(character_array, QUEST_GIVER.enemy)

noun = ["hat", "car keys", "wedding", "sorrow", "violin case", "flower"].sample

noun += " " + ['museum','plaza','center','foundation','academy'].sample

NOUN = noun.split(" ").map(&:capitalize).join(" ")