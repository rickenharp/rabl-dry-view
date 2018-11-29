require 'dry-view'

class ExampleView < Dry::View::Controller
  configure do |config|
    config.paths = [File.join(__dir__, "templates")]
    config.default_format = :json
    config.template = "example"
  end

  expose :example
end
