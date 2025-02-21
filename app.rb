require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

get("/square/results") do
  @input = params.fetch("number")
  @square = @input.to_f ** 2
  erb(:square)
end

get("/square_root/results") do
  erb(:square_root)
end

get("/payment/results") do
  erb(:payment)
end

get("/random/results") do
  erb(:random)
end
