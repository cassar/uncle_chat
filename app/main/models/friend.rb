class Friend < Volt::Model
  field :name
  field :image
  belongs_to :user
end
