require('rspec')
require('pry')
require('sinatra')
require('parcels')

# specify dimensions & weight
# call volume on an instance
describe('Parcel') do
it("calculates the volume of the package") do
    volume = Parcel.new(3,3,3)
    expect(volume.volume1(3,3,3)).to(eq(27))
  end
end
