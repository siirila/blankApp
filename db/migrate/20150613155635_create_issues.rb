class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.integer    :user_id, null: false
      t.references :path, index: true, foreign_key: true
      t.datetime   :timestamp
      t.text       :message
    end
  end
end
