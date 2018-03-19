class Appointment

	attr_accessor :patient, :doctor

	ALL = []

	def initialize(date, doctor)
		@date = date
		@doctor = doctor
		@patient = patient
		ALL << self
	end

	def self.all 
		ALL
	end

end