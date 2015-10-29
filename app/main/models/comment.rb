class Comment < Volt::Model
  field :entry
  field :colour
  field :size
  field :family
  field :background
  belongs_to :friend
end
