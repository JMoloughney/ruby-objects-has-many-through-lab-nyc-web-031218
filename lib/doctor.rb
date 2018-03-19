require_relative './appointment.rb'

class Doctor

	attr_reader :name, :appointments

	def initialize(name)
		@name = name
		@appointments = []
	end

	def add_appointment(appointment)
		@appointments << appointment
	end

	def appointments
		Appointment.all.select do |app|
			app.doctor == self
		end
	end

	def patients
		appointments.collect do |app|
			app.patient
		end
	end


end