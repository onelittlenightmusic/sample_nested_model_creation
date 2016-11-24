class DescendantsController < ApplicationController
  before_action :set_descendant, only: [:show, :edit, :update, :destroy]

  # GET /descendants
  # GET /descendants.json
  def index
    @descendants = Descendant.all
  end

  # GET /descendants/1
  # GET /descendants/1.json
  def show
  end

  # GET /descendants/new
  def new
    @descendant = Descendant.new
  end

  # GET /descendants/1/edit
  def edit
  end

  # POST /descendants
  # POST /descendants.json
  def create
    @descendant = Descendant.new(descendant_params)

    respond_to do |format|
      if @descendant.save
        format.html { redirect_to @descendant, notice: 'Descendant was successfully created.' }
        format.json { render :show, status: :created, location: @descendant }
      else
        format.html { render :new }
        format.json { render json: @descendant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /descendants/1
  # PATCH/PUT /descendants/1.json
  def update
    respond_to do |format|
      if @descendant.update(descendant_params)
        format.html { redirect_to @descendant, notice: 'Descendant was successfully updated.' }
        format.json { render :show, status: :ok, location: @descendant }
      else
        format.html { render :edit }
        format.json { render json: @descendant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /descendants/1
  # DELETE /descendants/1.json
  def destroy
    @descendant.destroy
    respond_to do |format|
      format.html { redirect_to descendants_url, notice: 'Descendant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_descendant
      @descendant = Descendant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def descendant_params
      params.require(:descendant).permit(:name, :child_id)
    end
end
