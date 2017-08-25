class CreateOutgoingMails < ActiveRecord::Migration[5.1]
  def change
    create_table :outgoing_mails do |t|
      t.string :title
      t.string :description
      t.integer :section_id #Link to section
      t.integer :user_id #Link to user who create it

      t.timestamps
    end
    #add an index to speed queries up
    add_index :outgoing_mails, :section_id
    #add an index to speed queries up
    add_index :outgoing_mails, :user_id
  end
end
