class AddRenderShowToProducts < ActiveRecord::Migration
  def change
    add_column :products, :render_show, :boolean
  end
end
