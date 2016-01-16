class Command < ActiveRecord::Base
  belongs_to :category
  validates_presence_of :name, :category, :description, :command
end
