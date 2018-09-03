class AddUserIdToPerson < ActiveRecord::Migration[5.2]
  def change
    change_table :people do |t|
      t.belongs_to :user
    end
  end
end
