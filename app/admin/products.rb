ActiveAdmin.register Product do
  permit_params :name, :type, :color, :description, :price, :category_id
end
