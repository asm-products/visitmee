class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :lat
      t.string :lon
      # t.resources :users

      t.timestamps
    end
  end
end
