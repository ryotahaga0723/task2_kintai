class Timecard < ApplicationRecord
  has_one :schedule, dependent: :destroy
  has_one :main_business_time, dependent: :destroy
  has_one :sub_business_time, dependent: :destroy
  belongs_to :user

  def total_time_main
    unless main_business_time.end_time_main == nil
      if (main_business_time.end_time_main - main_business_time.start_time_main) >= 28800
        (main_business_time.end_time_main - main_business_time.start_time_main) -3600
      elsif (main_business_time.end_time_main - main_business_time.start_time_main) >=21600 
        (main_business_time.end_time_main - main_business_time.start_time_main) -2700  
      else
        (main_business_time.end_time_main - main_business_time.start_time_main)
      end
    else
      0
    end
  end

  def total_work_time_main_hour
    (total_time_main / 3600).floor
  end

  def total_work_time_main_minute
    (total_time_main % 3600 / 60).floor
  end

  
  def total_time_sub
    unless sub_business_time.end_time_sub == nil
      if (sub_business_time.end_time_sub - sub_business_time.start_time_sub) >= 28800
        (sub_business_time.end_time_sub - sub_business_time.start_time_sub) -3600
      elsif (sub_business_time.end_time_sub - sub_business_time.start_time_sub) >=21600 
        (sub_business_time.end_time_sub - sub_business_time.start_time_sub) -2700
      else
        sub_business_time.end_time_sub - sub_business_time.start_time_sub
      end
    else
      0
    end
  end

  def total_work_time_sub_hour
    (total_time_sub / 3600).floor
  end

  def total_work_time_sub_minute
    (total_time_sub % 3600 / 60).floor
  end

  def total_time
    total_time_main + total_time_sub
  end

  def total_work_time_hour
    (total_time / 3600).floor
  end

  def total_work_time_minute
    (total_time % 3600 / 60).floor
  end

  def total_work_time_main_month
    if (main_business_time.end_time_main - main_business_time.start_time_main) >= 28800
      (main_business_time.end_time_main - main_business_time.start_time_main) -3600
    elsif (main_business_time.end_time_main - main_business_time.start_time_main) >=21600 
      (main_business_time.end_time_main - main_business_time.start_time_main) -2700
    else
      (main_business_time.end_time_main - main_business_time.start_time_main)
    end
  end

  def total_work_time_sub_month
    if (sub_business_time.end_time_sub - sub_business_time.start_time_sub) >= 28800
      (sub_business_time.end_time_sub - sub_business_time.start_time_sub) -3600
    elsif (sub_business_time.end_time_sub - sub_business_time.start_time_sub) >=21600 
      (sub_business_time.end_time_sub - sub_business_time.start_time_sub) -2700
    else
      (sub_business_time.end_time_sub - sub_business_time.start_time_sub)
    end
  end
end
