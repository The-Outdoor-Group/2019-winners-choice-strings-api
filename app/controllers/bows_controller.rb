class BowsController < ApplicationController
  before_action :authenticate_admin!, only: [:new, :edit, :create, :update, :destroy]
  before_action :set_bow, only: [:show, :edit, :update, :destroy]

  # GET /bows
  # GET /bows.json
  def index
    if params[:name]
      @bows = Bow.whose_name_starts_with(params[:name])
    else
      @bows = Bow.all
    end
  end

  # GET /bows/1
  # GET /bows/1.json
  def show
  end

  # GET /bows/new
  def new
    @brand_options = Brand.all.map{ |b| [b.name, b.id] }
    @type_options = Type.all.map{ |t| [t.name, t.id] }
    @bow = Bow.new
  end

  # GET /bows/1/edit
  def edit
    @brand_options = Brand.all.map{ |b| [b.name, b.id] }
    @type_options = Type.all.map{ |t| [t.name, t.id] }
  end

  # POST /bows
  # POST /bows.json
  def create
    @brand_options = Brand.all.map{ |b| [b.name, b.id] }
    @type_options = Type.all.map{ |t| [t.name, t.id] }
    @bow = Bow.new(bow_params)

    respond_to do |format|
      if @bow.save
        format.html { redirect_to @bow, notice: 'Bow was successfully created.' }
        format.json { render :show, status: :created, location: @bow }
      else
        format.html { render :new }
        format.json { render json: @bow.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bows/1
  # PATCH/PUT /bows/1.json
  def update
    respond_to do |format|
      if @bow.update(bow_params)
        format.html { redirect_to @bow, notice: 'Bow was successfully updated.' }
        format.json { render :show, status: :ok, location: @bow }
      else
        format.html { render :edit }
        format.json { render json: @bow.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bows/1
  # DELETE /bows/1.json
  def destroy
    @bow.destroy
    respond_to do |format|
      format.html { redirect_to bows_url, notice: 'Bow was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bow
      @bow = Bow.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bow_params
      params.require(:bow).permit(:brand_id, :type_id, :name)
    end
end
