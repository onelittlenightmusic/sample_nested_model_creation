class Parent < ApplicationRecord
  has_many :children, inverse_of: :parent
  has_many :brothers, inverse_of: :parent
  accepts_nested_attributes_for :children, :brothers
  alias_attribute :parent_name, :name
  def children=(params={})
    self.children_attributes = params
  end
  def brothers=(params={})
    self.brothers_attributes = params
  end
  def as_json(options = nil)
    {
    #id: id,
    parent_name: name,
    }
  end
end
