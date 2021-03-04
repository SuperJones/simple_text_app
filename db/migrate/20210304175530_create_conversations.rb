class CreateConversations < ActiveRecord::Migration[6.1]
  def change
    create_table :conversations do |t|
      t.string :name
      t.string :phone
      t.string :text_message

      t.references :user

      t.timestamps
    end
  end
end
