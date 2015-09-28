# Skynet

Skynet is a command-line program that can generate stories based on a template written in a scripting language called Sky.

While the program was originally created to generate a novel for National Novel Writing Month, it may also be used for other creative writing projects as well.

Though the program's source code is licensed under the MIT, the Sky files may be placed under their own individual licenses.

## Installation

    $ git clone https://github.com/tra38/Skynet.git
    $ gem install skynet-0.1.0.gem

## Usage
    $ skynet path/to/story.sky

## Sky Language
```ruby
puts %{ #{HERO.name} never cared too much about #{NOUN}. It was too far away, too remote for him
to worry about. Instead, he would busy himself with his career as a #{HERO.job},
where he would #{HERO.job_purpose}. While he would work, #{HERO.name} wished for some
adventure in his life. Sometimes, #{HERO.name} would #{HERO.action}, but it proves no use. Ah well. }
```

For a 'real-world example' where Skynet may be more useful, look at story.sky.

There are currently 4 different characters...the HERO, the QUEST_GIVER, the MONSTER, and the MONSTER_KID. NOUN is a "special location" that is meant to be a focus of the story, but it does not have to be.

Because Sky is a DSL of Ruby, Ruby code would work just as fine in Sky. There may be quirks in this system that I have to discover and document.

TODO: Provide more detailed documentation.

## Contributing

1. Fork it ( https://github.com/tra38/skynet/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request