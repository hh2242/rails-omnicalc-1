class SquarerootController < ApplicationController
  def show
  end

  def results
    number = params[:number].to_d
    @squareroot = Math.sqrt(number)
  end
end
