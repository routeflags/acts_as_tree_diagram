# frozen_string_literal: true

require_relative 'lib/acts_as_tree_diagram/version'

Gem::Specification.new do |spec|
  spec.name        = 'acts_as_tree_diagram'
  spec.version     = ActsAsTreeDiagram::VERSION
  spec.authors       = ['smapira']
  spec.email         = ['smapira@routeflags.com']
  spec.summary       = 'Draws a tree diagram from a acts_as_tree model'
  spec.description = <<-DESCRIPTION
    ActsAsTreeDiagram extends ActsAsTree to add simple function for draw tree diagram with html.
  DESCRIPTION
  spec.homepage      = 'https://github.com/smapira/acts_as_tree_diagram'
  spec.license       = 'MIT'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage
  spec.metadata['bug_tracker_uri'] = 'https://github.com/smapira/acts_as_tree_diagram/issues'
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']
  end

  spec.add_dependency 'acts_as_tree'
  spec.add_dependency 'rails'
  spec.add_dependency 'sassc-rails'

  # Testing dependencies

  # Dummy Rails app dependencies
  spec.add_development_dependency 'better_errors'
  spec.add_development_dependency 'binding_of_caller'
  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'bundler-audit'
  spec.add_development_dependency 'listen'
  spec.add_development_dependency 'pry-byebug'
  spec.add_development_dependency 'puma'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rubocop-rails'
  spec.add_development_dependency 'sqlite3'
  spec.add_development_dependency 'web-console'
end
