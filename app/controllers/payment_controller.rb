class PaymentController < ApplicationController
  def show
  end

  def results
    apr = params[:user_apr].empty? ? 1 : params[:user_apr].to_d
    years = params[:user_years].empty? ? 1 : params[:user_years].to_i
    principle = params[:user_pv].empty? ? 1 : params[:user_pv].to_d

    rate = apr / 100 / 12
    n = years * 12
    numerator = rate * principle
    denom = 1 - ((1 + rate) ** (-n))
    if denom == 0
      denom = 1
    end
    @pay = (numerator / denom)
  end
end
