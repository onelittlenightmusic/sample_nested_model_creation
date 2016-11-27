class Descendant < ApplicationRecord
  belongs_to :child, inverse_of: :descendants
  def name_base=(base)
    self.name = base + "_name"
  end
end
