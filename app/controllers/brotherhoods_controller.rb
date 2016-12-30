class BrotherhoodsController < ApplicationController
  before_action :set_brotherhood, only: [:show, :edit, :update, :destroy]

  # GET /brotherhoods
  # GET /brotherhoods.json
  def index
    @brotherhoods = Brotherhood.all
  end

  # GET /brotherhoods/1
  # GET /brotherhoods/1.json
  def show
  end

  # GET /brotherhoods/new
  def new
    @brotherhood = Brotherhood.new
  end

  # GET /brotherhoods/1/edit
  def edit
  end

  # POST /brotherhoods
  # POST /brotherhoods.json
  def create
    @brotherhood = Brotherhood.new(brotherhood_params)

    respond_to do |format|
      if @brotherhood.save
        format.html { redirect_to @brotherhood, notice: 'Brotherhood was successfully created.' }
        format.json { render :show, status: :created, location: @brotherhood }
      else
        format.html { render :new }
        format.json { render json: @brotherhood.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /brotherhoods/1
  # PATCH/PUT /brotherhoods/1.json
  def update
    respond_to do |format|
      if @brotherhood.update(brotherhood_params)
        format.html { redirect_to @brotherhood, notice: 'Brotherhood was successfully updated.' }
        format.json { render :show, status: :ok, location: @brotherhood }
      else
        format.html { render :edit }
        format.json { render json: @brotherhood.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /brotherhoods/1
  # DELETE /brotherhoods/1.json
  def destroy
    @brotherhood.destroy
    respond_to do |format|
      format.html { redirect_to brotherhoods_url, notice: 'Brotherhood was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_brotherhood
      @brotherhood = Brotherhood.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def brotherhood_params
      params.require(:brotherhood).permit(:parent_id, :parent2_id)
    end
end
