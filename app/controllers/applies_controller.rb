class AppliesController < ApplicationController
  def create
    schedule = Schedule.find(params[:schedule])
    user = User.find(params[:user])
    if schedule.holiday != "有給休暇"
      Apply.create(classification: 1, schedule_id: schedule.id, user_id: user.id)
    else
      Apply.create(classification: 2, schedule_id: schedule.id, user_id: user.id)
    end   
    redirect_to schedules_path(user: current_user), notice: "休暇申請しました"
  end

  def destroy
    apply = Apply.find(params[:id])
    apply.destroy
    redirect_to schedules_url(user: current_user.id), notice: "休暇申請を削除しました"
  end


end
