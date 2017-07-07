class CreateUserIdToServices < ActiveRecord::Migration[5.1]
  def change
    create_table :user_id_to_services do |t|
      add_column :services, :user_id, :integer
      add_index :services, :user_id
    end
  end
end
