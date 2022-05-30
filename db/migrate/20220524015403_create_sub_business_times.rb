class CreateSubBusinessTimes < ActiveRecord::Migration[6.0]
  def change
    create_table :sub_business_times do |t|
      t.datetime :start_time_sub, null: false
      t.datetime :end_time_sub
      t.bigint :timecard_id, null: false, index: true, foreign_key: true
      t.bigint :user_id, null: false, index: true, foreign_key: true
      t.bigint :sub_business_id, null: false, index: true, foreign_key: true

      t.timestamps
    end
  end
end
