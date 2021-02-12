class CalculatorController < ApplicationController
    def add
        @message = 'hello'
    end 
    def result
      @result = params[:first].to_i + params[:second].to_i
    end
end
