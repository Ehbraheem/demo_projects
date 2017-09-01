class AddPrefixToCategories < ActiveRecord::Migration[5.1]
  def change
    add_column :categories, :prefix, :string
  end
end
