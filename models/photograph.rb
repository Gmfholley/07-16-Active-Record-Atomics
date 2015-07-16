class Photograph < ActiveRecord::Base
  belongs_to :photographer
  has_and_belongs_to_many :albums
  
  validates :name, presence: true
  validates :photographer, presence: true


  def top_photo?
    albums.length > 2
  end
  
end