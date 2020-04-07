require 'sinatra'

get '/' do
  "Hello"
end

get '/daniel' do
  @nome = "Luan"
  @soma = 1 + 3
  erb :luan
end

get '/calc' do
  erb :form
end

get '/soma' do
  @num1 = params[:num1]
  @num2 = params[:num2]
  @soma = @num1.to_i + @num2.to_i
  erb :result
end 