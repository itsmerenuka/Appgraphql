class AddPostIdToSection < ActiveRecord::Migration[6.1]
  def change
    add_column :sections, :post_id, :integer
  end
end
