class RootController < ApplicationController
  def index
    @equation = '2+2'
  end

  def eval
    redirect_to root_path
  end
  
end
