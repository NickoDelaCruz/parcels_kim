require('rspec')
require('pry')
require('sinatra')
require('parcels')

# specify dimensions & weight
# call volume on an instance
describe('Parcel') do
  it("calculates the volume of the package") do
    volume = Parcel.new(3,3,3)
    expect(volume.volume_calc(3,3,3)).to(eq(27))
  end

  it("will calculate shipping costs") do
    cost = Parcel.new(3,3,3)
    expect(cost.shipping_cost(3,3,3)).to(eq(33.75))
  end
end
