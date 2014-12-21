class RootController < ApplicationController
  def index
    @equation = '2+2'
    @results = Calculation.all
  end

  def calc_eval
    calculation = Calculation.evaluate(params[:equation])
    calculation.save!
    redirect_to root_path
  end
  
end
