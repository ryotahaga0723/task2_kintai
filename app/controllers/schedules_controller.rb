class SchedulesController < ApplicationController
  before_action :set_schedule, only: %i[ show edit update destroy ]

  # GET /schedules or /schedules.json
  def index
    @user = User.find(params[:user])
    @month = params[:month] ? Date.parse(params[:month]) : Time.zone.today
    @timecards = Timecard.where(user_id: @user.id).where(date: @month.all_month).order("date")
    @applies = Apply.all
    @applies_user = Apply.where(user_id: @user.id)
  end

  # GET /schedules/1 or /schedules/1.json
  def show
  end

  # GET /schedules/new
  def new
    @timecard = Timecard.find(params[:timecard])
    @user = User.find(params[:user])
    @schedule = Schedule.new
  end

  # GET /schedules/1/edit
  def edit
  end

  # POST /schedules or /schedules.json
  def create
    @schedule = Schedule.new(schedule_params)
      if @schedule.save
        redirect_to schedules_path(user: @schedule.user_id), notice: "スケジュールを登録しました"
      else
        render :new, status: :unprocessable_entity
      end
  end

  # PATCH/PUT /schedules/1 or /schedules/1.json
  def update
      if @schedule.update(schedule_params)
        redirect_to schedules_path(user: @schedule.user_id), notice: "スケジュールを更新しました"
      else
        render :edit, status: :unprocessable_entity
      end
  end

  def update_apply
    @apply = Apply.find(params[:apply])
    if @apply.classification == "申請"
      user = User.find(params[:user])
      @apply.schedule.update(holiday: 3)
    else
      user = User.find(params[:user])
      @apply.schedule.update(holiday: 1)
    end
    @apply.destroy!
    redirect_to schedules_path(user: current_user), notice: "休暇を承認しました"
  end


  # DELETE /schedules/1 or /schedules/1.json
  def destroy
    @schedule.destroy
    redirect_to schedules_url(current_user.id), notice: "スケジュールを削除しました"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_schedule
      @schedule = Schedule.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def schedule_params
      params.require(:schedule).permit(:start_time_sch, :end_time_sch, :holiday, :timecard_id, :user_id)
    end
end
