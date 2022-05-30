class CreateApplies < ActiveRecord::Migration[6.0]
  def change
    create_table :applies do |t|
      t.bigint :classification, null: false, default: 0
      t.bigint :apply, null: false, default: 0
      t.bigint :user_id, null: false, index: true, foreign_key: true
      t.bigint :schedule_id, null: false, index: true, foreign_key: true

      t.timestamps
    end
  end
end
