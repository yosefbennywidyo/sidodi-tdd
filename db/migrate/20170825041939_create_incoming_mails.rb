class CreateIncomingMails < ActiveRecord::Migration[5.1]
  def change
    create_table :incoming_mails do |t|
      t.string :title
      t.string :description
      t.integer :section_id #Link to section
      t.integer :user_id #Link to user who create it
      t.integer :role_id #Link to role
      t.integer :status_id #Link to status

      t.timestamps
    end
    #add an index to speed queries up
    add_index :incoming_mails, :section_id
    #add an index to speed queries up
    add_index :incoming_mails, :user_id
    #add an index to speed queries up
    add_index :outgoing_mails, :role_id
    #add an index to speed queries up
    add_index :outgoing_mails, :status_id
  end
end
