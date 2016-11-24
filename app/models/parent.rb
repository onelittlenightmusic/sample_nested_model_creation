class Parent < ApplicationRecord
  has_many :children, inverse_of: :parent
  accepts_nested_attributes_for :children
  alias_attribute :parent_name, :name
  def as_json(options = nil)
    {
    #id: id,
    parent_name: name,
    }
  end
end
