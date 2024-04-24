class RandomController < ApplicationController
  def show
  end

  def results
    user_min = params[:user_min].to_d
    user_max = params[:user_max].to_d
    @num = user_min + rand * (user_max - user_min)
  end
end
