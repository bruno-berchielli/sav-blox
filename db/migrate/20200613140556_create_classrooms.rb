class CreateClassrooms < ActiveRecord::Migration[6.0]
  def change
    create_table :classrooms do |t|
      t.string :title
      t.integer :capacity
      t.integer :user_id

      t.timestamps
    end
  end
end
