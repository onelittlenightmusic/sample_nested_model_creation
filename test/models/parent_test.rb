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
  test "create parent including children 2" do
    parent_name = "testparent3"
    params = {"name"=> parent_name, "children"=>[{"name"=>parent_name+"child", "descendants"=>[{"name"=>parent_name+"desc"}]}]}
    Parent.create(params)
    assert Parent.last.name == parent_name && Child.last.name == parent_name+"child" && Descendant.last.name == parent_name+"desc"
  end
  test "create parent including brother" do
    parent_name = "testparent4"
    params = {"name"=> parent_name, "children"=>[{"name"=>parent_name+"child", "descendants"=>[{"name"=>parent_name+"desc"}]}], "young_brothers"=>[{"name" => parent_name + "brother", "children"=>[{"name"=>parent_name+"child2"}]}]}
    Parent.create(params)
    assert Parent.last.name == parent_name+"brother" && Child.last.name == parent_name+"child2" && Descendant.last.name == parent_name+"desc"
  end
end
