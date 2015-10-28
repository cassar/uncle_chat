class Friend < Volt::Model
  field :name
  field :image
  belongs_to :user
  has_one :style
end
