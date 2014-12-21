class RootController < ApplicationController
  def index
    @equation = '2+2'
    @results = if current_user
      current_user.calculations
    else
      Calculation.where(user_id: nil)
    end
  end

  def calc_eval
    @calculation = Calculation.evaluate(params[:equation])
    @calculation.user = current_user
    @calculation.save!
    redirect_to root_path unless request.xhr?
  end
  
end
