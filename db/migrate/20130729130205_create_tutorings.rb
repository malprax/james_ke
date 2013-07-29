class CreateTutorings < ActiveRecord::Migration
  def change
    create_table :tutorings do |t|

      t.timestamps
    end
  end
end
