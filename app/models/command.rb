class Command < ActiveRecord::Base
  belongs_to :category
  validates_presence_of :name, :category, :description, :command
  validates :command, uniqueness: true
  validates :name, uniqueness: true

  scope :search, -> (busca){where("name like ?", "%#{busca}%")
  }

  scope :search2, -> (busca){where("description like ?", "%#{busca}%")
  }

  scope :search3, -> (busca){where("command like ?", "%#{busca}%")
  }

end