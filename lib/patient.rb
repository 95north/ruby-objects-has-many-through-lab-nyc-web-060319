require 'pry'
require_relative './doctor.rb'
require_relative './appointment.rb'

class Patient

	attr_accessor :name

	@@all = []

	def initialize(name)
		@name = name
		@@all << self
	end


	def self.all
		@@all 
	end


	def new_appointment(doctor, date)
		Appointment.new(self, doctor, date)
	end


	def appointments
		Appointment.all.select do |appt|
			appt.patient == self
		end
	end

	def doctors
		appointments.collect do |appt|
			appt.doctor
		end
	end





end
