class OvertimesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_overtime, only: [:show, :edit, :update, :destroy]

  # GET /overtimes
  # GET /overtimes.json
  def index
    @overtimes = Overtime.all
  end

  # GET /overtimes/1
  # GET /overtimes/1.json
  def show
  end

  # GET /overtimes/new
  def new
    @overtime = current_user.overtimes.build
  end

  # GET /overtimes/1/edit
  def edit
  end

  def change_status
    @overtime = Overtime.find(params[:id])
    @overtime.update_attribute(:approval_status, "1")
    respond_to do |format|
    format.html { redirect_to overtimes_url, notice: 'Overtime was successfully sent for approval.' }
  end
  end

  # POST /overtimes
  # POST /overtimes.json
  def create
    @overtime = current_user.overtimes.build(overtime_params)

    respond_to do |format|
      if @overtime.save
        format.html { redirect_to @overtime, notice: 'Overtime was successfully created.' }
        format.json { render action: 'show', status: :created, location: @overtime }
      else
        format.html { render action: 'new' }
        format.json { render json: @overtime.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /overtimes/1
  # PATCH/PUT /overtimes/1.json
  def update
    respond_to do |format|
      if @overtime.update(overtime_params)
        format.html { redirect_to @overtime, notice: 'Overtime was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @overtime.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /overtimes/1
  # DELETE /overtimes/1.json
  def destroy
    @overtime.destroy
    respond_to do |format|
      format.html { redirect_to overtimes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_overtime
      @overtime = Overtime.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def overtime_params
      params.require(:overtime).permit(:start_time, :end_time, :description, :approval_status)
    end
end
