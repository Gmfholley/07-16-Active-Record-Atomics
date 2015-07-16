class Photograph < ActiveRecord::Base
  belongs_to :photographer
  
  validates :name, presence: true
  validates :photographer, presence: true

  
end