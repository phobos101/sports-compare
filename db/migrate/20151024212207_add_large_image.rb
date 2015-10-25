class AddLargeImage < ActiveRecord::Migration
  def change
  	add_column :cars, :car_feature_img, :string
  end
end
