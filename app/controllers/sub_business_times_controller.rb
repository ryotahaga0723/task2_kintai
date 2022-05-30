class SubBusinessTimesController < ApplicationController
  before_action :set_sub_business_time, only: %i[ show edit update destroy ]

  # GET /sub_business_times or /sub_business_times.json
  def index
    @sub_business_times = SubBusinessTime.all
  end

  # GET /sub_business_times/1 or /sub_business_times/1.json
  def show
  end

  def decide
    if SubBusinessTime.joins(:timecard).where(user_id: current_user.id).where(timecards: {date: Date.current}).where.not(start_time_sub: nil).exists?
      sub = SubBusinessTime.joins(:timecard).where(user_id: current_user.id).where(timecards: {date: Date.current}).where.not(start_time_sub: nil)
      sub.each do |sub_business_time|
        redirect_to edit_time_sub_business_time_path(sub_business_time)
      end
    else
      redirect_to new_time_sub_business_times_path(current_user.id)
    end
  end

  # GET /sub_business_times/new
  def new
    @timecard = Timecard.find(params[:format])
    @sub_business_time = SubBusinessTime.new
    @sub_businesses = SubBusiness.left_outer_joins(:approval).where(user_id: current_user.id).where(approvals: {approval: "承認"})
  end

  def new_time
    @sub_businesses = SubBusiness.left_outer_joins(:approval).where(user_id: current_user.id).where(approvals: {approval: "承認"})
    @timecard = Timecard.where(user_id: current_user.id).where(date: Date.current)
    @sub_business_time = SubBusinessTime.new
  end

  # GET /sub_business_times/1/edit
  def edit
    @timecard = Timecard.find(params[:timecard])
    @sub_businesses = SubBusiness.left_outer_joins(:approval).where(user_id: current_user.id).where(approvals: {approval: "承認"})
  end

  def edit_time
    @timecard = Timecard.where(user_id: current_user.id).where(date: Date.current)
    @sub_business_time = SubBusinessTime.find(params[:id])
  end

  # POST /sub_business_times or /sub_business_times.json
  def create
    @sub_business_time = SubBusinessTime.new(sub_business_time_params)
      if @sub_business_time.save
        redirect_to index_sub_timecards_path(current_user), notice: "副業の勤務時間を登録しました"
      else
        render :new, status: :unprocessable_entity
      end
  end 

  # PATCH/PUT /sub_business_times/1 or /sub_business_times/1.json
  def update
      if @sub_business_time.update(sub_business_time_params)
        redirect_to index_sub_timecards_path(current_user), notice: "副業の勤務時間を更新しました"
      else
        render :edit, status: :unprocessable_entity
      end
  end

  # DELETE /sub_business_times/1 or /sub_business_times/1.json
  def destroy
    @sub_business_time.destroy

    respond_to do |format|
      format.html { redirect_to sub_business_times_url, notice: "Sub business time was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sub_business_time
      @sub_business_time = SubBusinessTime.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sub_business_time_params
      params.require(:sub_business_time).permit(:start_time_sub, :end_time_sub, :timecard_id, :user_id, :sub_business_id)
    end
end
