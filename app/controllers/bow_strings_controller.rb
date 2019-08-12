class BowStringsController < ApplicationController
  before_action :set_bow_string, only: [:show, :edit, :update, :destroy]

  # GET /bow_strings
  # GET /bow_strings.json
  def index
    if params[:color]
      @bow_strings = BowString.whose_name_starts_with(params[:color])
    else
      @bow_strings = BowString.all
    end
  end

  # GET /bow_strings/1
  # GET /bow_strings/1.json
  def show
    @materials = @bow_string.materials.map { |material| Material.find(material) }
  end

  # GET /bow_strings/new
  def new
    @color_options = Color.all.map{ |c| [c.name, c.id] }
    @materials = Material.all
    @bow_string = BowString.new
  end

  # GET /bow_strings/1/edit
  def edit
    @color_options = Color.all.map{ |c| [c.name, c.id] }
    @materials = Material.all
  end

  # POST /bow_strings
  # POST /bow_strings.json
  def create
    @color_options = Color.all.map{ |c| [c.name, c.id] }
    @materials = Material.all
    @bow_string = BowString.new(bow_string_params)

    respond_to do |format|
      if @bow_string.save
        format.html { redirect_to @bow_string, notice: 'Bow string was successfully created.' }
        format.json { render :show, status: :created, location: @bow_string }
      else
        format.html { render :new }
        format.json { render json: @bow_string.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bow_strings/1
  # PATCH/PUT /bow_strings/1.json
  def update
    @materials = Material.all

    respond_to do |format|
      if @bow_string.update(bow_string_params)
        format.html { redirect_to @bow_string, notice: 'Bow string was successfully updated.' }
        format.json { render :show, status: :ok, location: @bow_string }
      else
        format.html { render :edit }
        format.json { render json: @bow_string.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bow_strings/1
  # DELETE /bow_strings/1.json
  def destroy
    @bow_string.destroy
    respond_to do |format|
      format.html { redirect_to bow_strings_url, notice: 'Bow string was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_bow_string
      @bow_string = BowString.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bow_string_params
      params.require(:bow_string).permit(:strand_1_image, :strand_2_image, :serving_image, :color_id, materials:[])
    end
end
