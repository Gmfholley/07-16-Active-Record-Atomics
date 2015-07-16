class Photograph
  validates :name, presence: true
  validates :photrapher_id, presence: true, numericality: {only_integer: true}
  
end