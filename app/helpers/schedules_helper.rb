module SchedulesHelper
  def date_color(holiday)
    if holiday == "休日"
      holiday.gsub(holiday,"weekend")
    elsif holiday == "有給休暇"
      holiday.gsub(holiday,"work_paid_holiday")
    end
  end   
end
