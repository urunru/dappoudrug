class ChangeClummnNameOfDrug < ActiveRecord::Migration
  def change
  	rename_column :drugs, :date, :postdate
  end
end
