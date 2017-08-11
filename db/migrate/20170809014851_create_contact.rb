class CreateContact < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.column :name, :string
      t.column :description, :text
      t.column :email_address, :string

      t.timestamps
    end
  end
end
