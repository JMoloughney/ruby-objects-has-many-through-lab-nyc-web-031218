require_relative './appointment.rb'
class Patient

	attr_reader :name, :appointments

def initialize(name)
	@name = name
	@appointments = []
end


def appointments
	Appointment.all.select do |app|
		app.patient == self
	end
end

def add_appointment(appointment)
	@appointments << appointment.patient = self 
end

def doctors
	appointments.collect do |app|
		app.doctor
	end
end


end