class Parcel
  def initialize(length, width, height)
    @length = length
    @width = width
    @height = height
  end

# l x w x h = v
  def volume1(length,width,height)
    volume = length * width * height
  end
end

# volume x price = price to ship
