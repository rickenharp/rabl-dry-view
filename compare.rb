require 'bundler/setup'
require 'tilt'
require 'rabl'
require 'rabl/template'
require 'json'

require_relative 'example_view'
require_relative 'example'
require_relative 'subitem'
require_relative 'scope'

Rabl.configure do |config|
  config.include_json_root = true
  config.include_child_root = false
  config.view_paths = ['views']
end

example = Example.new(
  example_id: 12345,
  subitems: [
    Subitem.new(name: 'foo'),
    Subitem.new(name: 'bar')
  ]
)

template = Tilt.new('templates/example.json.rabl')

foo = Scope.new(example)
puts template.render(foo)

view = ExampleView.new
puts view.(example: example)
