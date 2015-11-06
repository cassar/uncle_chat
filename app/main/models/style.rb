class Style < Volt::Model
  field :colour, String
  field :background, String
  field :family, String
  field :size, String
  belongs_to :friend
end
