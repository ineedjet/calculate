class RootController < ApplicationController
  def index
    @equation = '2+2'
    @result = session[:last_result]
  end

  def calc_eval
    securecalc = Dentaku::Calculator.new
    session[:last_result] = securecalc.evaluate(params[:equation]) rescue nil
    redirect_to root_path
  end
  
end
