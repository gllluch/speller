Gem::Specification.new do |spec|
  spec.name          = 'speller'
  spec.version       = '0.1.0'
  spec.date          = '2016-10-11'
  spec.summary       = "correct the spelling mistakes in your text"
  spec.description   = "A simple gem that which corrects spelling errors using Yandex Speller"
  spec.authors       = [ "Vlad Smirnov" ]
  spec.email         = 'glluch@gmail.com'
  spec.homepage      = 'https://rubygems.org/gems/example'
  spec.license       = 'MIT'

  spec.files         = [
    "lib/speller.rb",
    "lib/speller/httpClient.rb",
    "lib/speller/spell.rb"
  ]

  spec.add_runtime_dependency 'HTTParty'
  spec.add_runtime_dependency 'addressable'

  spec.requirements = %w[
    Internet\ connection
    ]
end
