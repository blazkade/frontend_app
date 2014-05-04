class AddResponseToAddeshops < ActiveRecord::Migration
  def change
    add_column :addeshops, :response, :string
  end
end
