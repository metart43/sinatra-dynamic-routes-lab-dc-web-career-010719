require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    @name = params[:name]
    @name.reverse
  end

  get "/square/:number" do
    @number = params[:number]
    @number = @number.to_i ** 2
    "#{@number}"
  end

  get "/say/:number/:phrase" do
    @number = params[:number]
    @phrase = params[:phrase]
    string = ''
    #binding.pry
    (@number.to_i).times do
    string +=  "#{@phrase}"
    end
    string
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get "/:operation/:number1/:number2" do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @operation = params[:operation]
    #binding.pry
    if @operation == "add"
     result = @num1 + @num2
   elsif @operation == 'subtract'
     result = @num2 - @num1
   elsif @operation == "multiply"
     result = @num1 * @num2
   else @operation == "divide"
     result = @num1 / @num2
   end
   result.to_s
  end
end
