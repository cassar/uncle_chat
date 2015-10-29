class Friend < Volt::Model
  field :name
  field :image
  belongs_to :user
  has_many :styles
  has_many :comments
end
