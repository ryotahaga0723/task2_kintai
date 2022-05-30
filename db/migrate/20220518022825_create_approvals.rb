class CreateApprovals < ActiveRecord::Migration[6.0]
  def change
    create_table :approvals do |t|
      t.bigint :approval, null:false, default:0
      t.bigint :user_id, null: false, index: true, foreign_key: true
      t.bigint :sub_business_id, null: false, index: true, foreign_key: true

      t.timestamps
    end
  end
end
