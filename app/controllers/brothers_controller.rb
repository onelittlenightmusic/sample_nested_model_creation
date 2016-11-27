class BrothersController < ApplicationController
  before_action :set_brother, only: [:show, :edit, :update, :destroy]

  # GET /brothers
  # GET /brothers.json
  def index
    @brothers = Brother.all
  end

  # GET /brothers/1
  # GET /brothers/1.json
  def show
  end

  # GET /brothers/new
  def new
    @brother = Brother.new
  end

  # GET /brothers/1/edit
  def edit
  end

  # POST /brothers
  # POST /brothers.json
  def create
    @brother = Brother.new(brother_params)

    respond_to do |format|
      if @brother.save
        format.html { redirect_to @brother, notice: 'Brother was successfully created.' }
        format.json { render :show, status: :created, location: @brother }
      else
        format.html { render :new }
        format.json { render json: @brother.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /brothers/1
  # PATCH/PUT /brothers/1.json
  def update
    respond_to do |format|
      if @brother.update(brother_params)
        format.html { redirect_to @brother, notice: 'Brother was successfully updated.' }
        format.json { render :show, status: :ok, location: @brother }
      else
        format.html { render :edit }
        format.json { render json: @brother.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /brothers/1
  # DELETE /brothers/1.json
  def destroy
    @brother.destroy
    respond_to do |format|
      format.html { redirect_to brothers_url, notice: 'Brother was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_brother
      @brother = Brother.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def brother_params
      params.require(:brother).permit(:name, :parent_id)
    end
end
