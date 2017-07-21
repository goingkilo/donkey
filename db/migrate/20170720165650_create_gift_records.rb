class CreateGiftRecords < ActiveRecord::Migration
  def change
    create_table :gift_records do |t|
      t.string :name
      t.date :when
      t.string :gift
      t.string :notes

      t.timestamps null: false
    end
  end
end
