class AddBirthdayToRegistration < ActiveRecord::Migration[5.1]
  def change
  	add_column :registrations, :birthday, :date
  end
end
