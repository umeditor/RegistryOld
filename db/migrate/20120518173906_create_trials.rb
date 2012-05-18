class CreateTrials < ActiveRecord::Migration
  def change
    create_table :trials do |t|
      t.integer :user_id
      t.string :title
      t.boolean :published
      t.datetime :published_datetime

      t.timestamps
    end
  end
end
