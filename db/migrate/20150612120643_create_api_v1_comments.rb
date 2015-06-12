class CreateApiV1Comments < ActiveRecord::Migration
  def change
    create_table :api_v1_comments do |t|
      t.string :user
      t.references :site, index: true, foreign_key: true
      t.string :type
      t.string :memo
      t.string :alternatives

      t.timestamps null: false
    end
  end
end
