class Friend < Volt::Model
  field :name
  field :image
  field :entry
  has_many :styles
  has_many :comments
end
