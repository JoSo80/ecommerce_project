ActiveAdmin.register Product do
  permit_params :name, :color, :price, :category_id, :set
end
