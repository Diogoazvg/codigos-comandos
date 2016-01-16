class Category < ActiveRecord::Base
	has_many :commands
end
