class Photograph < ActiveRecord::Base
  validates :name, presence: true
  validates :photographer_id, presence: true, numericality: {only_integer: true}
  
end