class CreatePinItems < ActiveRecord::Migration
  def change
    create_table :pin_items do |t|
      t.string :description
      t.string :url

      t.timestamps
    end
  end
end
