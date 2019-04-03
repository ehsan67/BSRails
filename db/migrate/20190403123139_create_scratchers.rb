class CreateScratchers < ActiveRecord::Migration[5.2]
  def change
    create_table :scratchers do |t|
      t.string :name
      t.string :description
      t.string :size
      t.number :price

      t.timestamps
    end
  end
end
