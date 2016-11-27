json.extract! child, :id, :name, :parent_id
json.descendants{ json.array! child.descendants, partial: 'descendants/descendant', as: :descendant}
