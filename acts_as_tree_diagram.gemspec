# frozen_string_literal: true

require_relative 'lib/acts_as_tree_diagram/version'

Gem::Specification.new do |spec|
  spec.name        = 'acts_as_tree_diagram'
  spec.version     = ActsAsTreeDiagram::VERSION
  spec.authors       = ['smapira']
  spec.email         = ['smapira@routeflags.com']
  spec.summary       = 'Draws a tree diagram from a acts_as_tree model'
  spec.description   = 'Draws a tree diagram from a acts_as_tree model'
  spec.homepage      = 'https://bitbucket.org/routeflagsinc/acts_as_tree_diagram/'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata['homepage_uri'] = spec.homepage
  # spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']
  end

  spec.add_dependency 'acts_as_tree'
  spec.add_dependency 'rails'
  spec.add_dependency 'sassc-rails'

  # Testing dependencies

  # Dummy Rails app dependencies
  spec.add_development_dependency 'actionpack'
  spec.add_development_dependency 'activesupport'
  spec.add_development_dependency 'json'
  spec.add_development_dependency 'puma'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'sprockets-rails'
  spec.add_development_dependency 'sqlite3'
  spec.add_development_dependency 'uglifier'
end
