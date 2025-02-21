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
  @apr = params.fetch("user_apr").to_fs(:percentage)
    @r_percentage = params.fetch("user_apr").to_f
    @r = @r_percentage/1200
  @years = params.fetch("user_years").to_i
    @n = @years * 12
  @pv = params.fetch("user_pv_").to_fs(:currency)
  @numerator = @r * @pv
  @denominator = 1 - ((1 + @r) ** (-1 * @n))
  @payment = @numerator / @denominator
  erb(:payment)
end
