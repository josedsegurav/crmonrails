ActiveAdmin.register Customer do
  permit_params :name, :email, :phone, :notes, :image

  form do |f|
    f.inputs do
      f.input :name
      f.input :email
      f.input :phone
      f.input :notes
      f.input :image, as: :file
    end
    f.actions
  end

  show do
    attributes_table do
      row :name
      row :email
      row :phone
      row :notes
      row :image do |customer|
        if customer.image.attached?
          image_tag url_for(customer.image), width: "200"
        else
          "No image uploaded"
        end
      end
    end
  end

  index do
    selectable_column
    id_column
    column :name
    column :email
    column :phone
    column :image do |customer|
      if customer.image.attached?
        image_tag url_for(customer.image), width: "50"
      end
    end
    actions
  end
end
