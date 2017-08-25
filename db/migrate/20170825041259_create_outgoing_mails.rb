class CreateOutgoingMails < ActiveRecord::Migration[5.1]
  def change
    create_table :outgoing_mails do |t|
      t.string :title
      t.string :description
      t.integer :section_id #Link to section
      t.integer :user_id #Link to user who create it
      t.integer :role_id #Link to role

      t.timestamps
    end
    #add an index to speed queries up
    add_index :outgoing_mails, :section_id
    #add an index to speed queries up
    add_index :outgoing_mails, :user_id
    #add an index to speed queries up
    add_index :outgoing_mails, :role_id
  end
end
