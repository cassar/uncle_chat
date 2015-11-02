class Friend < Volt::Model
  field :name
  field :image
  belongs_to :user
  has_one :style
  has_many :comments
end
