class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.string :title
      t.integer :user_id

      t.timestamps
    end

    add_index :workouts, :user_id
  end
end
