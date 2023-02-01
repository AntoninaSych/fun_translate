require File.expand_path('version', __dir__)

Gem::Specification.new do |spec|
  spec.name                  = 'fun_translate'
  spec.version               = FunTranslate::VERSION
  spec.authors               = ['Antonina Sych']
  spec.email                 = ['antoninasych@gmail.com']
  spec.summary               = ''
  spec.description           = ''
  spec.homepage              = 'https://github.com/antoninasych/fun_translate'
  spec.license               = 'MIT'
  spec.platform              = Gem::Platform::RUBY
  spec.required_ruby_version = '>= 2.7.0'

  spec.files = Dir['README.md', 'LICENSE',
                   'CHANGELOG.md', 'lib/**/*.rb',
                   'fun_translate.gemspec', '.github/*.md',
                   'Gemfile', 'Rakefile']
  spec.extra_rdoc_files = ['README.md']
  spec.require_paths    = ['lib']

  spec.add_dependency 'faraday', '~> 2.6'
  spec.add_dependency 'zeitwerk', '~> 2.4'

  spec.metadata = {
    'rubygems_mfa_required' => 'true'
  }
end