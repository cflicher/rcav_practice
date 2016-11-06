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

end
