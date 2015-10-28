class Style < Volt::Model
  field :colour
  field :background
  field :family
  field :size
  belongs_to :friend
end
