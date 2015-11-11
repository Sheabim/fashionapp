class LookTypesController < ApplicationController
  before_action :set_look_type, only: [:show, :edit, :update, :destroy]

  # GET /look_types
  # GET /look_types.json
  def index
    @look_types = LookType.all
  end

  # GET /look_types/1
  # GET /look_types/1.json
  def show
  end

  # GET /look_types/new
  def new
    @look_type = LookType.new
  end

  # GET /look_types/1/edit
  def edit
  end

  # POST /look_types
  # POST /look_types.json
  def create
    @look_type = LookType.new(look_type_params)

    respond_to do |format|
      if @look_type.save
        format.html { redirect_to @look_type, notice: 'Look type was successfully created.' }
        format.json { render :show, status: :created, location: @look_type }
      else
        format.html { render :new }
        format.json { render json: @look_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /look_types/1
  # PATCH/PUT /look_types/1.json
  def update
    respond_to do |format|
      if @look_type.update(look_type_params)
        format.html { redirect_to @look_type, notice: 'Look type was successfully updated.' }
        format.json { render :show, status: :ok, location: @look_type }
      else
        format.html { render :edit }
        format.json { render json: @look_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /look_types/1
  # DELETE /look_types/1.json
  def destroy
    @look_type.destroy
    respond_to do |format|
      format.html { redirect_to look_types_url, notice: 'Look type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_look_type
      @look_type = LookType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def look_type_params
      params.require(:look_type).permit(:name)
    end
end
