class CreateTimecards < ActiveRecord::Migration[6.0]
  def change
    create_table :timecards do |t|
      t.date :date, null:false
      t.bigint :user_id, null: false, index: true, foreign_key: true

      t.timestamps
    end
  end
end
