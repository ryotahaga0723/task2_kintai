class CreateMainBusinessTimes < ActiveRecord::Migration[6.0]
  def change
    create_table :main_business_times do |t|
      t.datetime :start_time_main, null: false
      t.datetime :end_time_main
      t.bigint :timecard_id, null: false, index: true, foreign_key: true
      t.bigint :user_id, null: false, index: true, foreign_key: true

      t.timestamps
    end
  end
end
