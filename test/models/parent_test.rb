require 'test_helper'

class ParentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "create parent including children" do
    params = {"name"=>"testparent1", "children_attributes"=>{"0"=>{"name"=>"testchild2", "descendants_attributes"=>{"0"=>{"name"=>"testdesc3"}}}}}
    Parent.create(params)
    assert Parent.last.name == "testparent1" && Child.last.name == "testchild2" && Descendant.last.name == "testdesc3"
  end
end
