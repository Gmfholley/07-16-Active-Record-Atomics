class Photographer < ActiveRecord::Base
  has_many :photographs, dependent: :destroy
  
  validates :name, presence: true
  
end