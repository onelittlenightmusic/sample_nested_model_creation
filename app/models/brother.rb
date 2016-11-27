class Brother < ApplicationRecord
  belongs_to :parent, inverse_of: :brothers
end
