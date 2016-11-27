class Child < ApplicationRecord
  belongs_to :parent, inverse_of: :children
  has_many :descendants, inverse_of: :child
  accepts_nested_attributes_for :descendants
  def descendants=(param)
    self.descendants_attributes = param
  end
  alias_attribute :child_name, :name
end
