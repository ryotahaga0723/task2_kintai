class CreateSchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :schedules do |t|
      t.datetime :start_time_sch, null: false
      t.datetime :end_time_sch
      t.bigint :holiday, null: false, default: 0
      t.bigint :timecard_id, null: false, index: true, foreign_key: true
      t.bigint :user_id, null: false, index: true, foreign_key: true

      t.timestamps
    end
  end
end
