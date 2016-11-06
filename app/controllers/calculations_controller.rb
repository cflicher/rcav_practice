class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end

  def square
    @number = params[:NUMBER].to_i
    @square_number = @number**2
  end

  def square_root
    @number = params[:NUMBER].to_i
    @square_number = (@number**0.5).round(2)
  end

  def random
    @min = params[:MIN].to_i
    @max = params[:MAX].to_i
  end

  def payment
    @annual_interest_rate = (params[:INTEREST_RATE]).to_f/100 #annual interest rate
    @monthly_interest_rate = @annual_interest_rate/12
    @monthpct = @monthly_interest_rate/100
    @years = params[:NUMBER_OF_YEARS].to_i
    @months = @years*12
    @principal = params[:PRINCIPAL_VALUE].to_i
    @numerator = @monthpct*@principal
    @oneplusr = 1+@monthpct
    @negperiod = (-1)*@months
    @oneplusrtomonth = @oneplusr**@negperiod
    @denominator = 1-@oneplusrtomonth
    @payment = (@numerator/@denominator).round(2)

  end


end
