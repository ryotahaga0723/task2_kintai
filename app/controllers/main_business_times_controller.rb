class MainBusinessTimesController < ApplicationController
  before_action :set_main_business_time, only: %i[ show edit update destroy ]

  # GET /main_business_times or /main_business_times.json
  def index
    @main_business_times = MainBusinessTime.all
  end

  # GET /main_business_times/1 or /main_business_times/1.json
  def show
  end 
 
  def decide
    if MainBusinessTime.joins(:timecard).where(user_id: current_user.id).where(timecards: {date: Date.current}).where.not(start_time_main: nil).exists?
      main = MainBusinessTime.joins(:timecard).where(user_id: current_user.id).where(timecards: {date: Date.current}).where.not(start_time_main: nil)
      main.each do |main_business_time|
        redirect_to edit_time_main_business_time_path(main_business_time)
      end
    else
      redirect_to new_time_main_business_times_path(current_user.id)
    end
  end

  # GET /main_business_times/new
  def new
    @timecard = Timecard.find(params[:format])
    @main_business_time = MainBusinessTime.new
  end

  def new_time
    @timecard = Timecard.where(user_id: current_user.id).where(date: Date.current)
    @main_business_time = MainBusinessTime.new
    @sub_businesses = SubBusiness.left_outer_joins(:approval).where(user_id: current_user.id).where(approvals: {approval: "承認"})
  end

  # GET /main_business_times/1/edit
  def edit
    @timecard = Timecard.find(params[:timecard])
  end

  def edit_time
    @timecard = Timecard.where(user_id: current_user.id).where(date: Date.current)
    @main_business_time = MainBusinessTime.find(params[:id])
    @sub_businesses = SubBusiness.left_outer_joins(:approval).where(user_id: current_user.id).where(approvals: {approval: "承認"})
  end


  # POST /main_business_times or /main_business_times.json
  def create
    @main_business_time = MainBusinessTime.new(main_business_time_params)
      if @main_business_time.save
        redirect_to timecards_path(current_user.id)
      else
        render :new, status: :unprocessable_entity
      end
  end

  # PATCH/PUT /main_business_times/1 or /main_business_times/1.json
  def update
      if @main_business_time.update(main_business_time_params)
        redirect_to timecards_path(current_user), notice: "勤務時間を更新しました"
      else
        render :edit, status: :unprocessable_entity
      end
  end

  # DELETE /main_business_times/1 or /main_business_times/1.json
  def destroy
    @main_business_time.destroy

    respond_to do |format|
      format.html { redirect_to main_business_times_url, notice: "Main business time was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_main_business_time
      @main_business_time = MainBusinessTime.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def main_business_time_params
      params.require(:main_business_time).permit(:start_time_main, :end_time_main, :timecard_id, :user_id)
    end
end
