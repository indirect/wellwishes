class CreateWishes < ActiveRecord::Migration[5.2]
  def change
    create_table :wishes do |t|
      t.text :message
      t.string :source
      t.belongs_to :event, foreign_key: true

      t.timestamps
    end
  end
end
