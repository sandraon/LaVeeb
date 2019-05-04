class HomepagesController < ApplicationController
  before_action :set_homepage, only: [:show]

  # GET /homepages
  # GET /homepages.json
  def index
    @homepages = Homepage.all
  end

  # GET /homepages/1
  # GET /homepages/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_homepage
      @homepage = Homepage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def homepage_params
      params.require(:homepage).permit(:orgname, :logo, :content, :picture, :pictext, :linktekst, :linkdest, :address1, :address2, :epost, :phone, :uselink1, :uselink2, :uselink3, :uselink4)
    end
end
