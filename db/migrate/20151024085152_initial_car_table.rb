class InitialCarTable < ActiveRecord::Migration
  def change
  	create_table :stats do |t|
  		t.string :car_make
  		t.string :car_model
  		t.integer :year
  		t.float :msrp
  		t.string :horsepower
  		t.float :top_speed
  		t.float :acceleration
  		t.string :drive
  		t.float :mpg
  		t.string :petrol_type

  		t.timestamps
  	end
  end
end
