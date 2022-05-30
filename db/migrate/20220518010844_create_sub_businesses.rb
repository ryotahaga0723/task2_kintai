class CreateSubBusinesses < ActiveRecord::Migration[6.0]
  def change
    create_table :sub_businesses do |t|
      t.bigint :status, null: false, default: 0
      t.string :sub_business_company, null: false
      t.text :sub_business_content, null: false
      t.bigint :prescribed_time_sub, null: false, default: 0
      t.bigint :over_time, null: false, default: 0
      t.bigint :user_id, null: false, index: true, foreign_key: true

      t.timestamps
    end
  end
end
