class CreateContracts < ActiveRecord::Migration[6.0]
  def change
    create_table :contracts do |t|
      t.bigint :prescribed_time_main, null:false, default: 40
      t.bigint :agreement_time, null:false, default: 45
      t.bigint :user_id, null: false, index: true, foreign_key: true

      t.timestamps
    end
  end
end
