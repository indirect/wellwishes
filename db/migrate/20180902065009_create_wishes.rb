class CreateWishes < ActiveRecord::Migration[5.2]
  def change
    create_table :wishes do |t|
      t.belongs_to :person
      t.date :date
      t.string :message
      t.string :name

      t.timestamps
    end
  end
end
