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
puts %{ #{HERO.name} never cared too much about #{NOUN}.

Instead, #{HERO.name} would busy himself with his career as a #{HERO.job},
where he would #{HERO.job_purpose}.

While he would work, #{HERO.name} wished for some adventure in his life.

Sometimes, #{HERO.name} #{HERO.action}, but his life was still boring.

So, one day, #{HERO.name} said #{HERO.speak}. It did not help.

Oh well.}
```

```bash
 Julian never cared too much about Flower Plaza.

Instead, Julian would busy himself with his career as a District Division Coordinator,
where he would integrate out-of-the-box initiatives.

While he would work, Julian wished for some adventure in his life.

Sometimes, Julian thought he would be capable enough to handle the task, but his life was still boring.

So, one day, Julian said "The golden age never was the present one". It did not help.

Oh well.
```

For a 'real-world example' where Skynet may be more useful, look at story.sky.

There are currently 8 different characters...
1) the HERO
2) the QUEST_GIVER
3) the MONSTER
4) the FALSE_HERO (in earlier versions, the MONSTER_KID)
5) the MONARCH
6) the REBEL
7) the ADVISOR
8) the TRAITOR

NOUN is a "special location" that is meant to be a focus of the story, but it does not have to be.

Because Sky is a DSL of Ruby, Ruby code would work just as fine in Sky. There may be quirks in this system that I have to discover and document.

TODO: Provide more detailed documentation.

## Contributing

1. Fork it ( https://github.com/tra38/skynet/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request