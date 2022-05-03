class CreateWorkouts < ActiveRecord::Migration[6.1]
  def change
    create_table :workouts do |t|
      t.string :title
      t.string :description
      t.string :image
      t.integer :sets
      t.integer :reps
      t.integer :weight
      t.belongs_to :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
