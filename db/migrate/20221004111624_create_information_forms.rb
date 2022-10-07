class CreateInformationForms < ActiveRecord::Migration[7.0]
  def change
    create_table :information_forms do |t|

      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :nation
      t.string :country
      t.string :city
      t.integer :phone_number
      t.string :introduction
      t.string :bio
      t.string :social_media

      t.timestamps
    end
  end
end
