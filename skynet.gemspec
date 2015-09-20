# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'skynet/version'

Gem::Specification.new do |spec|
  spec.name          = "skynet"
  spec.license       = "mit"
  spec.version       = Skynet::VERSION
  spec.authors       = ["Tariq Ali"]
  spec.email         = ["tra38@nau.edu"]

  spec.summary       = %q{Skynet is a command-line program that can generate stories based on a template written in a scripting language called Sky.}
  spec.description   = %q{Skynet was originally developed for generating a novel for NaNoWriMo. However, it can be used for other creative writing projects as well (provided you write a .Sky template beforehand)! You may run Skynet in the command line simply by typing "skynet example_file.sky".}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."

  spec.files         = Dir.glob("{bin,lib}/**/*") + %w(LICENSE.txt README.md)
  spec.bindir        = "bin"
  spec.executables   << 'skynet'
  spec.require_paths = ["lib"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com' to prevent pushes to rubygems.org, or delete to allow pushes to any server."
  end

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency("rdoc", "~> 3.12")
  spec.add_development_dependency("aruba", "~> 0")
  spec.add_dependency('methadone', '~> 1.9.1')
  spec.add_development_dependency('rspec')
  spec.add_development_dependency('faker')
end
