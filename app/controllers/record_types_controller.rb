class RecordTypesController < ApplicationController
  before_action :set_record_type, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /record_types
  # GET /record_types.json
  def index
    @record_types = RecordType.where(user: current_user)
  end

  # GET /record_types/1
  # GET /record_types/1.json
  def show
  end

  # GET /record_types/new
  def new
    @record_type = RecordType.new
  end

  # GET /record_types/1/edit
  def edit
  end

  def create
    @record_type = RecordType.new(record_type_params)
    if @record_type.save
      redirect_to @record_type, notice: 'Record type was successfully created.'
    else
       render :new
    end
  end

  # PATCH/PUT /record_types/1
  def update
    if @record_type.update(record_type_params)
      redirect_to @record_type, notice: 'Record type was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /record_types/1
  def destroy
    @record_type.destroy
    redirect_to record_types_url, notice: 'Record type was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_record_type
      @record_type = RecordType.find_by_id_and_user_id(params[:id], current_user.id)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def record_type_params
      params.require(:record_type).permit(:name).merge(user_id: current_user.id)
    end
end
