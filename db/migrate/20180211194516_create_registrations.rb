class CreateRegistrations < ActiveRecord::Migration[5.1]
  def change
    create_table :registrations do |t|
      t.string :studentfirstname
      t.string :studentlastname
      t.string :school
      t.string :grade
      t.string :homephone
      t.string :housenumber
      t.string :street
      t.string :city
      t.string :province
      t.string :postcode
      t.string :motherfirstname
      t.string :motherlastname
      t.string :motheremail
      t.string :mothercell
      t.string :fatherfirstname
      t.string :fatherlastname
      t.string :fatheremail
      t.string :fathercell

      t.timestamps
    end
  end
end
