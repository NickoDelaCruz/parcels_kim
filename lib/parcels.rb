class Parcel
  def initialize(length, width, height)
    @length = length
    @width = width
    @height = height
  end

# l x w x h = v
  def volume_calc(length,width,height)
    volume = length * width * height
  end
  # volume x price = price to ship

  def shipping_cost(length, width, height)
    cost = (length * width * height) * 1.25
  end
end
