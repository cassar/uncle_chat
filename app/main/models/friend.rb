class Friend < Volt::Model
  field :name
  field :image
  has_many :styles
  has_many :comments
end
