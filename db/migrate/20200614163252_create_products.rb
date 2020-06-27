class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.float :amount
      t.string :size

      t.timestamps
    end
  end
end
