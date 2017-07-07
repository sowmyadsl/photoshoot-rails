class CreateServices < ActiveRecord::Migration[5.1]
  def change
    create_table :services do |t|
      t.column :name, :string
      t.column :description, :string
      t.column :price, :string
      t.column :image, :string

      t.timestamps
    end
  end
end
