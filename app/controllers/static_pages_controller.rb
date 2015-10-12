class StaticPagesController < ApplicationController
  def index
    @households = Household.all
  end

  def home
  end


  def resources
  end

end
