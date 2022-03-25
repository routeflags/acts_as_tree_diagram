class CreateAnimals < ActiveRecord::Migration[6.1]
  def change
    create_table :animals do |t|
      t.string :name
      t.bigint :parent_id

      t.timestamps
      t.index :parent_id
    end
  end
end
