# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(
  name: '管理者A',
  email: 'aaa@gmail.com',
  password: 'aaaaaa',
  password_confirmation: 'aaaaaa',
  admin: true, 
  created_at: "2019-07-11 02:33:34", 
  updated_at: "2019-07-11 02:33:34"
)
User.create!(
  name: '管理者B', 
  email: 'bbb@gmail.com', 
  password: 'bbbbbb', 
  password_confirmation: 'bbbbbb',
  admin: true, 
  created_at: "2019-07-11 02:33:34", 
  updated_at: "2019-07-11 02:33:34"
)
User.create!(
  name: '社員C', 
  email: 'ccc@gmail.com', 
  password: 'cccccc', 
  password_confirmation: 'cccccc',
  admin: false, 
  created_at: "2019-07-11 02:33:34", 
  updated_at: "2019-07-11 02:33:34"
)
User.create!(
  name: '社員D', 
  email: 'ddd@gmail.com', 
  password: 'dddddd', 
  password_confirmation: 'dddddd',
  admin: false, 
  created_at: "2019-07-11 02:33:34",
  updated_at: "2019-07-11 02:33:34"
)
User.create!(
  name: '社員E',
  email: 'eee@gmail.com', 
  password: 'eeeeee', 
  password_confirmation: 'eeeeee',
  admin: false, 
  created_at: "2019-07-11 02:33:34", 
  updated_at: "2019-07-11 02:33:34"
)

Contract.create!(
  prescribed_time_main: 40,
  agreement_time: 45, 
  user_id: 1, 
  created_at: "2019-07-11 02:33:34", 
  updated_at: "2019-07-11 02:33:34"
)
Contract.create!(
  prescribed_time_main: 40,
  agreement_time: 45, 
  user_id: 2, 
  created_at: "2019-07-11 02:33:34", 
  updated_at: "2019-07-11 02:33:34"
)
Contract.create!(
  prescribed_time_main: 40,
  agreement_time: 45, 
  user_id: 3, 
  created_at: "2019-07-11 02:33:34", 
  updated_at: "2019-07-11 02:33:34"
)
Contract.create!(
  prescribed_time_main: 40,
  agreement_time: 45, 
  user_id: 4, 
  created_at: "2019-07-11 02:33:34", 
  updated_at: "2019-07-11 02:33:34"
)
Contract.create!(
  prescribed_time_main: 40,
  agreement_time: 45, 
  user_id: 5, 
  created_at: "2019-07-11 02:33:34", 
  updated_at: "2019-07-11 02:33:34"
)

SubBusiness.create!(
  status: 1,
  sub_business_company: '株式会社aaa',
  sub_business_content: 'SE',
  user_id: 1,
  created_at: "2019-07-11 02:33:34", 
  updated_at: "2019-07-11 02:33:34"
)
SubBusiness.create!(
  status: 1,
  sub_business_company: '株式会社bbb',
  sub_business_content: 'PM',
  user_id: 3,
  created_at: "2019-07-11 02:33:34", 
  updated_at: "2019-07-11 02:33:34"
)
SubBusiness.create!(
  status: 2,
  sub_business_company: '株式会社ccc',
  sub_business_content: 'YouTuber',
  prescribed_time_sub: 45,
  over_time: 40,
  user_id: 4,
  created_at: "2019-07-11 02:33:34", 
  updated_at: "2019-07-11 02:33:34"
)
SubBusiness.create!(
  status: 3,
  sub_business_company: '株式会社ddd',
  sub_business_content: '業務委託',
  user_id: 5,
  created_at: "2019-07-11 02:33:34", 
  updated_at: "2019-07-11 02:33:34"
)
SubBusiness.create!(
  status: 4,
  sub_business_company: '株式会社ddd',
  sub_business_content: '経営監督',
  user_id: 3,
  created_at: "2019-07-11 02:33:34", 
  updated_at: "2019-07-11 02:33:34"
)

Approval.create!(
  approval: 1,
  user_id: 1,
  sub_business_id: 1,
  created_at: "2019-07-11 02:33:34", 
  updated_at: "2019-07-11 02:33:34"
)
Approval.create!(
  approval: 1,
  user_id: 3,
  sub_business_id: 2,
  created_at: "2019-07-11 02:33:34", 
  updated_at: "2019-07-11 02:33:34"
)
Approval.create!(
  approval: 1,
  user_id: 4,
  sub_business_id: 3,
  created_at: "2019-07-11 02:33:34", 
  updated_at: "2019-07-11 02:33:34"
)
Approval.create!(
  approval: 0,
  user_id: 5,
  sub_business_id: 4,
  created_at: "2019-07-11 02:33:34", 
  updated_at: "2019-07-11 02:33:34"
)
Approval.create!(
  approval: 0,
  user_id: 3,
  sub_business_id: 5,
  created_at: "2019-07-11 02:33:34", 
  updated_at: "2019-07-11 02:33:34"
)

Timecard.create!(
  date: "2022-05-01",
  user_id: 1,
  created_at: "2019-07-11 02:33:34", 
  updated_at: "2019-07-11 02:33:34"
)
Timecard.create!(
  date: "2022-05-02",
  user_id: 1,
  created_at: "2019-07-11 02:33:34", 
  updated_at: "2019-07-11 02:33:34"
)
Timecard.create!(
  date: "2022-05-03",
  user_id: 1,
  created_at: "2019-07-11 02:33:34", 
  updated_at: "2019-07-11 02:33:34"
)
Timecard.create!(
  date: "2022-05-04",
  user_id: 1,
  created_at: "2019-07-11 02:33:34", 
  updated_at: "2019-07-11 02:33:34"
)
Timecard.create!(
  date: "2022-05-05",
  user_id: 1,
  created_at: "2019-07-11 02:33:34", 
  updated_at: "2019-07-11 02:33:34"
)
Timecard.create!(
  date: "2022-05-06",
  user_id: 1,
  created_at: "2019-07-11 02:33:34", 
  updated_at: "2019-07-11 02:33:34"
)
Timecard.create!(
  date: "2022-05-07",
  user_id: 1,
  created_at: "2019-07-11 02:33:34", 
  updated_at: "2019-07-11 02:33:34"
)
Timecard.create!(
  date: "2022-05-08",
  user_id: 1,
  created_at: "2019-07-11 02:33:34", 
  updated_at: "2019-07-11 02:33:34"
)
Timecard.create!(
  date: "2022-05-09",
  user_id: 1,
  created_at: "2019-07-11 02:33:34", 
  updated_at: "2019-07-11 02:33:34"
)
Timecard.create!(
  date: "2022-05-10",
  user_id: 1,
  created_at: "2019-07-11 02:33:34", 
  updated_at: "2019-07-11 02:33:34"
)
Timecard.create!(
  date: "2022-05-11",
  user_id: 1,
  created_at: "2019-07-11 02:33:34", 
  updated_at: "2019-07-11 02:33:34"
)
Timecard.create!(
  date: "2022-05-12",
  user_id: 1,
  created_at: "2019-07-11 02:33:34", 
  updated_at: "2019-07-11 02:33:34"
)
Timecard.create!(
  date: "2022-05-13",
  user_id: 1,
  created_at: "2019-07-11 02:33:34", 
  updated_at: "2019-07-11 02:33:34"
)
Timecard.create!(
  date: "2022-05-14",
  user_id: 1,
  created_at: "2019-07-11 02:33:34", 
  updated_at: "2019-07-11 02:33:34"
)
Timecard.create!(
  date: "2022-05-15",
  user_id: 1,
  created_at: "2019-07-11 02:33:34", 
  updated_at: "2019-07-11 02:33:34"
)
Timecard.create!(
  date: "2022-05-16",
  user_id: 1,
  created_at: "2019-07-11 02:33:34", 
  updated_at: "2019-07-11 02:33:34"
)
Timecard.create!(
  date: "2022-05-17",
  user_id: 1,
  created_at: "2019-07-11 02:33:34", 
  updated_at: "2019-07-11 02:33:34"
)
Timecard.create!(
  date: "2022-05-18",
  user_id: 1,
  created_at: "2019-07-11 02:33:34", 
  updated_at: "2019-07-11 02:33:34"
)
Timecard.create!(
  date: "2022-05-19",
  user_id: 1,
  created_at: "2019-07-11 02:33:34", 
  updated_at: "2019-07-11 02:33:34"
)
Timecard.create!(
  date: "2022-05-20",
  user_id: 1,
  created_at: "2019-07-11 02:33:34", 
  updated_at: "2019-07-11 02:33:34"
)

210.times do |n|
  Timecard.create!(
    date: "#{Date.today+n}",
    user_id: 2,
    created_at: "2019-07-11 02:33:34", 
    updated_at: "2019-07-11 02:33:34"
  )
end

210.times do |n|
  Timecard.create!(
    date: "#{Date.today+n}",
    user_id: 3,
    created_at: "2019-07-11 02:33:34", 
    updated_at: "2019-07-11 02:33:34"
  )
end

210.times do |n|
  Timecard.create!(
    date: "#{Date.today+n}",
    user_id: 4,
    created_at: "2019-07-11 02:33:34", 
    updated_at: "2019-07-11 02:33:34"
  )
end

210.times do |n|
  Timecard.create!(
    date: "#{Date.today+n}",
    user_id: 5,
    created_at: "2019-07-11 02:33:34", 
    updated_at: "2019-07-11 02:33:34"
  )
end

Schedule.create!(
  start_time_sch: "2022-05-01-10:00",
  end_time_sch: "2022-05-01-19:00",
  holiday: 1,
  timecard_id: 1,
  user_id: 1,
  created_at: "2019-07-11 02:33:34",
  updated_at: "2019-07-11 02:33:34"
)

Schedule.create!(
  start_time_sch: "2022-05-02-10:00",
  end_time_sch: "2022-05-02-19:00",
  holiday: 1,
  timecard_id: 2,
  user_id: 1,
  created_at: "2019-07-11 02:33:34",
  updated_at: "2019-07-11 02:33:34"
)
Schedule.create!(
  start_time_sch: "2022-05-03-10:00",
  end_time_sch: "2022-05-03-19:00",
  holiday: 1,
  timecard_id: 3,
  user_id: 1,
  created_at: "2019-07-11 02:33:34",
  updated_at: "2019-07-11 02:33:34"
)
Schedule.create!(
  start_time_sch: "2022-05-04-10:00",
  end_time_sch: "2022-05-04-19:00",
  holiday: 1,
  timecard_id: 4,
  user_id: 1,
  created_at: "2019-07-11 02:33:34",
  updated_at: "2019-07-11 02:33:34"
)
Schedule.create!(
  start_time_sch: "2022-05-05-10:00",
  end_time_sch: "2022-05-05-19:00",
  holiday: 1,
  timecard_id: 5,
  user_id: 1,
  created_at: "2019-07-11 02:33:34",
  updated_at: "2019-07-11 02:33:34"
)
Schedule.create!(
  start_time_sch: "2022-05-06-10:00",
  end_time_sch: "2022-05-06-19:00",
  holiday: 2,
  timecard_id: 6,
  user_id: 1,
  created_at: "2019-07-11 02:33:34",
  updated_at: "2019-07-11 02:33:34"
)
Schedule.create!(
  start_time_sch: "2022-05-07-10:00",
  end_time_sch: "2022-06-01-19:00",
  holiday: 2,
  timecard_id: 7,
  user_id: 1,
  created_at: "2019-07-11 02:33:34",
  updated_at: "2019-07-11 02:33:34"
)
Schedule.create!(
  start_time_sch: "2022-05-08-10:00",
  end_time_sch: "2022-05-08-19:00",
  holiday: 3,
  timecard_id: 8,
  user_id: 1,
  created_at: "2019-07-11 02:33:34",
  updated_at: "2019-07-11 02:33:34"
)
Schedule.create!(
  start_time_sch: "2022-05-09-10:00",
  end_time_sch: "2022-05-09-19:00",
  holiday: 1,
  timecard_id: 9,
  user_id: 1,
  created_at: "2019-07-11 02:33:34",
  updated_at: "2019-07-11 02:33:34"
)
Schedule.create!(
  start_time_sch: "2022-05-10-10:00",
  end_time_sch: "2022-05-10-19:00",
  holiday: 1,
  timecard_id: 10,
  user_id: 1,
  created_at: "2019-07-11 02:33:34",
  updated_at: "2019-07-11 02:33:34"
)

MainBusinessTime.create!(
  start_time_main: "2022-05-01-10:00",
  end_time_main: "2022-05-01-20:00",
  timecard_id: 1,
  user_id: 1,
  created_at: "2019-07-11 02:33:34",
  updated_at: "2019-07-11 02:33:34"
)
MainBusinessTime.create!(
  start_time_main: "2022-05-02-09:00",
  end_time_main: "2022-05-02-20:00",
  timecard_id: 2,
  user_id: 1,
  created_at: "2019-07-11 02:33:34",
  updated_at: "2019-07-11 02:33:34"
)
MainBusinessTime.create!(
  start_time_main: "2022-05-03-10:00",
  timecard_id: 3,
  user_id: 1,
  created_at: "2019-07-11 02:33:34",
  updated_at: "2019-07-11 02:33:34"
)
MainBusinessTime.create!(
  start_time_main: "2022-05-04-10:00",
  end_time_main: "2022-05-04-18:00",
  timecard_id: 4,
  user_id: 1,
  created_at: "2019-07-11 02:33:34",
  updated_at: "2019-07-11 02:33:34"
)
MainBusinessTime.create!(
  start_time_main: "2022-05-05-10:00",
  end_time_main: "2022-05-05-20:00",
  timecard_id: 5,
  user_id: 1,
  created_at: "2019-07-11 02:33:34",
  updated_at: "2019-07-11 02:33:34"
)
MainBusinessTime.create!(
  start_time_main: "2022-05-06-10:00",
  end_time_main: "2022-05-06-20:00",
  timecard_id: 6,
  user_id: 1,
  created_at: "2019-07-11 02:33:34",
  updated_at: "2019-07-11 02:33:34"
)
MainBusinessTime.create!(
  start_time_main: "2022-05-09-10:00",
  timecard_id: 9,
  user_id: 1,
  created_at: "2019-07-11 02:33:34",
  updated_at: "2019-07-11 02:33:34"
)
MainBusinessTime.create!(
  start_time_main: "2022-05-10-10:00",
  end_time_main: "2022-05-10-20:00",
  timecard_id: 10,
  user_id: 1,
  created_at: "2019-07-11 02:33:34",
  updated_at: "2019-07-11 02:33:34"
)
SubBusinessTime.create!(
  start_time_sub: "2022-05-01-20:00",
  end_time_sub: "2022-05-01-22:00",
  timecard_id: 1,
  user_id: 1,
  sub_business_id: 1,
  created_at: "2019-07-11 02:33:34",
  updated_at: "2019-07-11 02:33:34"
)
SubBusinessTime.create!(
  start_time_sub: "2022-05-03-20:00",
  end_time_sub: "2022-05-03-22:00",
  timecard_id: 3,
  user_id: 1,
  sub_business_id: 1,
  created_at: "2019-07-11 02:33:34",
  updated_at: "2019-07-11 02:33:34"
)
SubBusinessTime.create!(
  start_time_sub: "2022-05-04-10:00",
  end_time_sub: "2022-05-04-22:00",
  timecard_id: 4,
  user_id: 1,
  sub_business_id: 1,
  created_at: "2019-07-11 02:33:34",
  updated_at: "2019-07-11 02:33:34"
)
SubBusinessTime.create!(
  start_time_sub: "2022-05-10-20:00",
  end_time_sub: "2022-05-10-23:30",
  timecard_id: 10,
  user_id: 1,
  sub_business_id: 1,
  created_at: "2019-07-11 02:33:34",
  updated_at: "2019-07-11 02:33:34"
)
SubBusinessTime.create!(
  start_time_sub: "2022-05-11-10:00",
  end_time_sub: "2022-05-11-22:00",
  timecard_id: 11,
  user_id: 1,
  sub_business_id: 1,
  created_at: "2019-07-11 02:33:34",
  updated_at: "2019-07-11 02:33:34"
)
SubBusinessTime.create!(
  start_time_sub: "2022-05-12-20:00",
  end_time_sub: "2022-05-12-22:00",
  timecard_id: 12,
  user_id: 1,
  sub_business_id: 1,
  created_at: "2019-07-11 02:33:34",
  updated_at: "2019-07-11 02:33:34"
)
