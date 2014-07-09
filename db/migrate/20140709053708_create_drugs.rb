class CreateDrugs < ActiveRecord::Migration
  def change
    create_table :drugs do |t|
      t.string :name
      t.integer :score
      t.date :date

      t.timestamps
    end
  end
end
