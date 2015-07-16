class Album < ActiveRecord::Base
  
  has_and_belongs_to_many :photographs
  validates :name, presence: true
  
end