class CreateFrauds < ActiveRecord::Migration
  def change
    create_table :frauds do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
