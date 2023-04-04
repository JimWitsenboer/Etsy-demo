class AddListingIdToOrder < ActiveRecord::Migration[7.0]
  def change
    add_column :orders, :listing_id, :integer
  end
end
