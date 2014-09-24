class CreatePackages < ActiveRecord::Migration
  def change
    create_table :packages do |t|
      t.string :title
      t.string :price
      t.text :description

      t.timestamps
    end
  end
end
