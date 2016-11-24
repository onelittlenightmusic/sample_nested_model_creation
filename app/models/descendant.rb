class Descendant < ApplicationRecord
  belongs_to :child, inverse_of: :descendants
end
