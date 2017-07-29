class CreateProfessionals < ActiveRecord::Migration[5.1]
  def change
    create_table :professionals do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :github
      t.string :linkedin
      t.string :website

      t.timestamps
    end
  end
end
