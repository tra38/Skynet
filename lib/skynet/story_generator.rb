require 'yaml'

characters_data = CHARACTERS_DATA
@words_data = WORDS_DATA

@selfverbs = @words_data["SelfVerbs"]

CHARACTERS = characters_data["Characters"]

#Method to sample from a Hash
#Reference: http://stackoverflow.com/questions/15454632/is-there-an-equivalent-to-arraysample-for-hashes-in-ruby
def sample(original_hash)
  original_hash[original_hash.keys.sample]
end

def location
  @words_data["Locations"].sample
end

def adverb
  @words_data["Adverbs"].sample
end

def filler
  @words_data["Filler"].sample
end

def word(trait)
  puts trait
  p @selfverbs
  @selfverbs[trait].sample
end

def random_trait_category
  ["Purpose","Motivation","Methodology","Evaluation"].sample
end

def random_word(character, category=random_trait_category )
  random_trait = character[category].sample
  word(random_trait)
end

def name(character)
  character["Name"]
end

def enemy(character)
  character["Enemy"]
end

def goal(character)
  character["Goal"]
end