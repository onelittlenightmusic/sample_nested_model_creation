class Brotherhood < ApplicationRecord
  belongs_to :parent
  belongs_to :parent2, class_name: :Parent
end
