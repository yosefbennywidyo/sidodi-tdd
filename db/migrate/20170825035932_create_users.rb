class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest #for storing crypted passwords
      t.timestamps #default created_at and updated_at attributes
    end
      
      #adding a join table for has_and_belongs_to_many relationship
      #model order needs to be alphabetical
    create_table :sections_users do |t|
      t.integer :section_id
      t.integer :user_id
      t.integer :role_id
    end
    
    #add an index to speed queries up
    add_index(:sections_users, [:section_id, :user_id, :role_id])
  end
end
