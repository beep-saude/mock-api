class CreateExams < ActiveRecord::Migration[7.2]
  def change
    create_table :exams do |t|
      t.string :name
      t.string :tuss

      t.timestamps
    end
  end
end
