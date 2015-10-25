class AddCarPic < ActiveRecord::Migration
  def change
  	add_column :cars, :car_thumbnail, :string
  end
end
