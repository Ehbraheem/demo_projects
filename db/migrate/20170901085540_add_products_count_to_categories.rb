class AddProductsCountToCategories < ActiveRecord::Migration[5.1]
  def change
    add_column :categories, :products_count, :integer, default: 0

    reversible do |dir|
    	dir.up do
    		Category.all.each do |cat|
    			count = cat.products.size
    			# must use update attribute b/c it is marked read-only
    			cat.update_attribute(:products_count, count)
    		end
    	end

        dir.down do
            remove_column :categories, :products_count
        end
    end

  end
end
