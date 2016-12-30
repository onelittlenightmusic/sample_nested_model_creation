class Parent < ApplicationRecord
  has_many :children, inverse_of: :parent
  has_many :young_brothers, through: :brotherhoods, inverse_of: :old_brothers, source: :parent2
  has_many :brotherhoods
  has_many :inverse_brotherhoods, class_name: :Brotherhood, foreign_key: :parent2_id
  has_many :old_brothers, through: :inverse_brotherhoods, inverse_of: :young_brothers, source: :parent
  accepts_nested_attributes_for :children, :young_brothers
  alias_attribute :parent_name, :name
  def children=(params={})
    self.children_attributes = params
  end
  def young_brothers=(params={})
    self.young_brothers_attributes = params
  end
  #def as_json(options = nil)
  #  {
  #  #id: id,
  #  parent_name: name,
  #  }
  #end
end
