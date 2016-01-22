class Category < ActiveRecord::Base
	has_many :commands
	validates_presence_of :name
	validates :name, uniqueness: true
	validates_associated :commands
end
