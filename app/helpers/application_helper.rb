module ApplicationHelper
  def link_to_add_fields(name, f, association)
    new_object = @order.product.build
    id = new_object.object_id
    fields = f.fields_for(association, new_object, child_index: id) do |builder|
      render(association.to_s.singularize + "_fields", f: builder)
      end
    link_to(name, '#', class: "add_fields btn btn-success add-more", data: {id: id, fields: fields.gsub("\n", "")})
  end
end
