class Admin::NavigationsController < Admin::ApplicationController
  before_action :set_admin_navigation, only: [:show, :edit, :update, :destroy]

  # GET /admin/navigations
  # GET /admin/navigations.json
  def index
    @admin_navigations = Navigation.all
  end

  # GET /admin/navigations/1
  # GET /admin/navigations/1.json
  def show
  end

  # GET /admin/navigations/new
  def new
    @admin_navigation = Navigation.new
  end

  # GET /admin/navigations/1/edit
  def edit
  end

  # POST /admin/navigations
  # POST /admin/navigations.json
  def create
    @admin_navigation = Navigation.new(admin_navigation_params)

    respond_to do |format|
      if @admin_navigation.save
        format.html { redirect_to admin_navigations_path, notice: 'Leht lisati edukalt menüüsse.' }
        format.json { render :show, status: :created, location: @admin_navigation }
      else
        format.html { render :new }
        format.json { render json: @admin_navigation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/navigations/1
  # PATCH/PUT /admin/navigations/1.json
  def update
    respond_to do |format|
      if @admin_navigation.update(admin_navigation_params)
        format.html { redirect_to admin_navigations_path(@admin_navigation), notice: 'Lehe info on muudetud.' }
        format.json { render :show, status: :ok, location: @admin_navigation }
      else
        format.html { render :edit }
        format.json { render json: @admin_navigation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/navigations/1
  # DELETE /admin/navigations/1.json
  def destroy
    @admin_navigation.destroy
    respond_to do |format|
      format.html { redirect_to admin_navigations_path, notice: 'Leht on menüüst kustutatud.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_navigation
      @admin_navigation = Navigation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_navigation_params
      params.require(:navigation).permit(:name, :path)
    end
end
