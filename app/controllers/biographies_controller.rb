class BiographiesController < BaseController
  before_action :set_biography, only: [:show, :edit, :update, :destroy]

  # GET /biographies
  def index
    @biographies = Biography.all
  end

  # GET /biographies/1
  def show
  end

  # GET /biographies/new
  def new
    @biography = Biography.new
  end

  # GET /biographies/1/edit
  def edit
  end

  # POST /biographies
  def create
    @biography = Biography.new(biography_params)

    if @biography.save
      redirect_to @biography, notice: 'Biography was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /biographies/1
  def update
    if @biography.update(biography_params)
      redirect_to @biography, notice: 'Biography was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /biographies/1
  def destroy
    @biography.destroy
    redirect_to biographies_url, notice: 'Biography was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_biography
      @biography = Biography.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def biography_params
      params.require(:biography).permit(:year, :description, :sort)
    end
end
