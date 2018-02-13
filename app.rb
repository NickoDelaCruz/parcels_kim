
require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/Parcels')

get('/') do
  erb(:input)
end

get('/output') do
  @length = params.fetch("first_num").to_i
  @width = params.fetch("second_num").to_i
  @height = params.fetch("third_num").to_i
  package= Parcel.new(@length, @width, @height)
  @string_to_display = package.shipping_cost(@length, @width, @height)
  erb(:output)
end
