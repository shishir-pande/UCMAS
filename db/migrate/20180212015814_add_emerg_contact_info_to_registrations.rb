class AddEmergContactInfoToRegistrations < ActiveRecord::Migration[5.1]
  def change
  	add_column :registrations, :emergfirstname, :string
  	add_column :registrations, :emerglastname, :string
  	add_column :registrations, :emergrelation, :string
  	add_column :registrations, :emergphone, :string
  end
end
