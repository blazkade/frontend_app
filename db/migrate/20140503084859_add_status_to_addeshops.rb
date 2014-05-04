class AddStatusToAddeshops < ActiveRecord::Migration
  def change
    add_column :addeshops, :status, :string
  end
end
