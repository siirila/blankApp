class CreateApiV1Sites < ActiveRecord::Migration
  def change
    create_table :api_v1_sites do |t|
      t.string :url

      t.timestamps null: false
    end
  end
end
