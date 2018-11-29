class Example
  attr_reader :example_id

  def initialize(example_id:, subitems:)
    @example_id = example_id
    @subitems = subitems
  end

  def subitems
    @subitems
  end
end
