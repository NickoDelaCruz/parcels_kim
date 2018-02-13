
require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/Parcels')

get('/') do
  erb(:input)
end

get('/output') do
  @length = params.fetch("first_num")
  @width = params.fetch("second_num")
  @height = params.fetch("third_num")
  parcel= Parcel.new(@length, @width, @height)
  @string_to_display = parcel.shipping_cost
  erb(:output)
end
