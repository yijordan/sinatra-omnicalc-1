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
  @input = params.fetch("number")
  @root = @input.to_f ** 1/2
  erb(:root)
end

get("/random/results") do
  @min = params.fetch("user_min").to_f
  @max = params.fetch("user_max").to_f
  @random = rand(@min..@max)
  erb(:random)
end

get("/payment/results") do
  erb(:payment)
end
