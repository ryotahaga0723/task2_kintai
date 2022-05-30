class TimecardsController < ApplicationController

  def index
    @user = User.find(params[:format])
    #月
    @month = params[:month] ? Date.parse(params[:month]) : Time.zone.today
    #月ごとのユーザーのタイムカード
    @timecards = Timecard.includes(:schedule, :main_business_time).where(user_id: @user.id).where(date: @month.all_month).order("date")
    #承認済みの副業
    @sub_businesses = SubBusiness.left_outer_joins(:approval).where(user_id: @user.id).where(approvals: {approval: "承認"})
    #承認済みの副業（statusの雇用契約（弊社が後の場合））
    @sub_businesses_2 = SubBusiness.left_outer_joins(:approval).where(user_id: @user.id).where(approvals: {approval: "承認"}).where(status: "雇用契約（弊社が後の場合）")
    #承認済みの副業（statusの雇用モデル）
    @sub_businesses_3 = SubBusiness.left_outer_joins(:approval).where(user_id: @user.id).where(approvals: {approval: "承認"}).where(status: "雇用モデル")
    #勤務日数
    @timecards_work = Timecard.joins(:main_business_time).where(user_id: @user.id).where(date: @month.all_month).count
    #休日の勤務日数
    @timecards_work_holiday = Timecard.left_outer_joins(:schedule).joins(:main_business_time).where(user_id: @user.id).where(schedules: {holiday: "休日"}).where(date: @month.all_month)
    #平日の勤務日数
    @timecards_work_weekday = Timecard.left_outer_joins(:schedule, :main_business_time).where(user_id: @user.id).where(schedules: {holiday: "平日"}).where.not(main_business_times: {timecard_id: nil}).where(date: @month.all_month).count
    #有給休暇の取得日数
    @timecards_work_paid_holiday = Timecard.left_outer_joins(:schedule).where(user_id: @user.id).where(schedules: {holiday: "有給休暇"}).where(date: @month.all_month).count
    #月ごとのユーザーのタイムカード
    @timecards_sub_2 = Timecard.left_outer_joins(sub_business_time: :sub_business).includes(:schedule, :main_business_time).where(user_id: @user.id).where(date: @month.all_month).where(sub_business_times: {sub_business: @sub_businesses_2 }).order("date")
  end

  def index_sub
    @user = User.find(params[:format])
    @month = params[:month] ? Date.parse(params[:month]) : Time.zone.today
    @timecards = Timecard.left_outer_joins(:schedule, :main_business_time).where(user_id: @user.id).where(date: @month.all_month).order("date")
    #本業勤務日数
    @timecards_work_main = Timecard.joins(:main_business_time).where(user_id: @user.id).where(date: @month.all_month).count
    #副業勤務日数
    @timecards_work_sub = Timecard.joins(:sub_business_time).where(user_id: @user.id).where(date: @month.all_month).count
    #本業・副業ダブり勤務日数
    @timecards_work_and = Timecard.joins(:main_business_time).joins(:sub_business_time).where(user_id: @user.id).where(date: @month.all_month).count
    #本業平日の勤務日数
    @timecards_work_weekday = Timecard.left_outer_joins(:schedule).where(user_id: @user.id).where(schedules: {holiday: "平日"}).where(date: @month.all_month).count
  end

  def index_admin
    @day = params[:day] ? Date.parse(params[:day]) : Time.zone.today
    #今日の勤怠管理
    @timecards = Timecard.left_outer_joins(:schedule, :main_business_time).where(date: @day.all_day).order("date")
    #今日の出勤前のタイムカード群
    @timecards_before_work = Timecard.left_outer_joins(:schedule, :main_business_time).where(date: @day.all_day).where(main_business_times: {timecard_id: nil}).where(schedules: {holiday: "平日"})
    #今日の出勤中のタイムカード群
    @timecards_working = Timecard.left_outer_joins(:main_business_time).where(date: @day.all_day).where.not(main_business_times: {start_time_main: nil}).where(main_business_times: {end_time_main: nil})
    #今日の退勤済みのタイムカード群
    @timecards_after_work = Timecard.left_outer_joins(:main_business_time).where(date: @day.all_day).where.not(main_business_times: {start_time_main: nil}).where.not(main_business_times: {end_time_main: nil})
    #今日の休日休暇のタイムカード群
    @timecards_holiday_work = Timecard.left_outer_joins(:schedule, :main_business_time).where(date: @day.all_day).where(main_business_times: {timecard_id: nil}).where(schedules: {holiday: "休日"}).or(Timecard.left_outer_joins(:schedule, :main_business_time).where(date: @day.all_day).where(main_business_times: {timecard_id: nil}).where(schedules: {holiday: "有給休暇"}))
    #今日の未定のタイムカード群
    @timecards_work_or_not = Timecard.left_outer_joins(:schedule, :main_business_time).where(date: @day.all_day).where(schedules: {timecard_id: nil}).where(main_business_times: {timecard_id: nil})
  end

  def index_admin_month
    #月
    @month = params[:month] ? Date.parse(params[:month]) : Time.zone.today
    #月ごとのユーザーのタイムカード
    @users = User.includes(sub_businesses: :approval).all
  end


  def new
    @timecard = Timecard.new
    @timecard.build_schedule
  end
   
  def create
    @timecard = Timecard.new(timecard_params)
      if @timecard.save
        redirect_to schedules_path, notice: "Schedule was successfully created."
      else
        render :new, status: :unprocessable_entity
      end
  end

  private
    def timecard_params
      params.require(:timecard).permit(:date, :user_id, schedule_attributes: [:id, :start_time_sch, :end_time_sch, :holiday])
    end

end
