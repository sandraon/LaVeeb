class PagesController < ApplicationController
  before_action :set_page, only: [:show]

  # GET /pages/1
  # GET /pages/1.json
  def show
    raise ActionController::RoutingError.new('Not Found') if @page.nil?
  end

  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_page
      @page = Page.where(slug: params[:slug]).last
    end

end
