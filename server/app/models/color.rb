class Color
  attr_reader :id, :name

  def initialize(id, name)
    @id = id
    @name = name
  end

  def read_attribute_for_serialization(key)
    send(key)    
  end
end
