class HouseholdsController < ApplicationController

def index
@households = Household.all
# @geojson = Household.geojson
#
#    respond_to do |format|
#     format.html
#     format.json { render json: @geojson }
#    end


end



  def find_household
    @household = get_house_via_code
    if @household.nil?
      render text: 'No such household exists, please go back'
    else
      redirect_to household_path(get_house_via_code)
    end
  end

  def new
    @household = Household.new
  end

  def create
    @household = Household.new(household_params)
    @household.save
    @id = @household.id
    redirect_to household_path(@id)
  end

  def show
    @household = get_house_via_id
  end

  def update
  end

  private
  def household_params
    params.require(:household).permit(:long, :lat, :elevation, :nickname, :code, :country, :image, :pdf_url, :vr_url)
  end

  def get_house_via_id
    Household.find(params[:id])
  end


  def get_house_via_code
    Household.where(code: params[:code]).first
  end

end
