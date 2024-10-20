class CreateCatalogExams < ActiveRecord::Migration[7.2]
  def change
    create_table :catalog_exams do |t|
      t.string :name
      t.string :tuss

      t.timestamps
    end
  end
end
