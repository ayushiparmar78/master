class CreateContactDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :contact_details do |t|
      t.string :name
      t.string :email
      t.string :contact_number
      t.string :subject
      t.string :message
      t.timestamps
    end
  end
end
