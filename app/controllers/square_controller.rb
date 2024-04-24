class SquareController < ApplicationController
  def show
  end

  def results
    number = params[:number].to_d
    @square = number * number
  end
end
