json.extract! parent, :id, :parent_name
json.children { json.array! parent.children, partial: 'children/child', as: :child}
