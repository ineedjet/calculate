class RootController < ApplicationController
  def index
    @equation = '2+2'
    @result = session[:last_result]
  end

  def calc_eval
    session[:last_result] = eval params[:equation]
    redirect_to root_path
  end
  
end
