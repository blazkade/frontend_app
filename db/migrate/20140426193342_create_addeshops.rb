class CreateAddeshops < ActiveRecord::Migration
  def change
    create_table :addeshops do |t|
      t.string :eshopAddress

      t.timestamps
    end
  end
end
