namespace :timecard do
  desc "timecardを定期的に作成する"
  task create_timecard: :environment do
    User.all.each do |user|
      Timecard.create!(
        date: "#{Date.today+210}",
        user_id: user.id,
        created_at: "2019-07-11 02:33:34", 
        updated_at: "2019-07-11 02:33:34"
      )
    end
  end
end
