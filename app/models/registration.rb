class Registration < ApplicationRecord
		validates :studentfirstname, presence: true
		validates :studentlastname, presence: true
		validates :school, presence: true
		validates :grade, presence: true
		validates :birthday, presence: true
		validates :housenumber, presence: true
		validates :street, presence: true
		validates :city, presence: true
		validates :province, presence: true
		validates :postcode, presence: true
		validates :emergfirstname, presence: true
		validates :emerglastname, presence: true
		validates :emergrelation, presence: true
		validates :emergphone, presence: true
		validate :guardian

	private

		def guardian
			if motherfirstname.blank? || motherlastname.blank? || motheremail.blank? || mothercell.blank? then
				if fatherfirstname.blank? || fatherlastname.blank? || fatheremail.blank? || fathercell.blank? then
					errors.add(:base, "At least one parent's details must be fully provided.")
				end
			else
				true
			end
		end
end
