class CreatePaths < ActiveRecord::Migration
  def change
    create_table :paths do |t|
      t.references :host, index: true, foreign_key: true
      t.string     :path, null: false
    end
  end
end
