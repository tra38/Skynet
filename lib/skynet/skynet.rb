require "skynet/version"
require 'faker'
require 'skynet/story_generator.rb'
require 'skynet/smart_sample.rb'

class Character
	attr_reader :name, :enemy, :type, :traits, :job, :job_purpose, :company, :proverbs

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
		@proverbs = args[:proverbs]
	end

	def action
		WORDS_DATA["SelfVerbs"][traits.smart_sample].smart_sample
	end

	def speak
		proverbs.smart_sample
	end
end

proverbs = WORDS_DATA["Proverbs"]

character_array = []

CHARACTERS.each do |character|
	proverb_set = character[1]["ProverbSet"]
	character_array << Character.new(type: character[0], name: character[1]["Name"], traits: character[1], enemy: character[1]["Enemy"], proverbs: proverbs[proverb_set])
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

HERO = character_array.shuffle!.pop

MONSTER = find_and_return(character_array, HERO.enemy )

QUEST_GIVER = character_array.shuffle!.pop

FALSE_HERO = find_and_return(character_array, QUEST_GIVER.enemy)
#MONSTER_KID is an alias to ensure backward compablitiy
MONSTER_KID = FALSE_HERO

MONARCH = character_array.shuffle!.pop

REBEL = find_and_return(character_array, MONARCH.enemy)

ADVISOR = character_array.shuffle!.pop

TRAITOR = find_and_return(character_array, ADVISOR.enemy)





noun = ["hat", "car keys", "wedding", "sorrow", "violin case", "flower"].sample

noun += " " + ['museum','plaza','center','foundation','academy'].sample

NOUN = noun.split(" ").map(&:capitalize).join(" ")