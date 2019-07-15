require_relative 'config/environment'

class App < Sinatra::Base
  

    get "/reversename/:name" do 
      @name = params["name"]
      "#{@name.reverse}"
    end 


    get "/square/:number" do 
      @num = params["number"].to_i 
      @squared = @num*@num
      "#{@squared}"
    end 

    get "/say/:number/:phrase" do 
      @number = params["number"].to_i
      @phrase = params["phrase"] 
      @arr = []
      @output = @number.times do 
        @arr << @phrase end 
      @arr.join(" ")
    end 
    
    get "/say/:word1/:word2/:word3/:word4/:word5" do 
      params.values.join(" ") + "."
    end

    get "/:operation/:number1/:number2" do 
      op = params["operation"]
      if op == "add"
        num1 = params["number1"].to_i
        num2 = params["number2"].to_i
        total = num1 + num2 
        "#{total}"
      elsif op == "subtract"
        num1 = params["number1"].to_i
        num2 = params["number2"].to_i
        total = num1 - num2 
        "#{total}"
      elsif op == "multiply"
        num1 = params["number1"].to_i
        num2 = params["number2"].to_i
        total = num1 * num2
        "#{total}"
      elsif op == "divide"
        num1 = params["number1"].to_i
        num2 = params["number2"].to_i
        total = num1 / num2
        "#{total}"
      end 
      
      
      # params.values.inject(0){|sum,x| sum + x }
      # binding.pry

    end 
















end