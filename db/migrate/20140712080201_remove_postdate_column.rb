class RemovePostdateColumn < ActiveRecord::Migration
  def change
    remove_column :drugs, :postdate
  end
end
