json.parents do
  json.array! @parents, partial: 'parents/parent', as: :parent
end
