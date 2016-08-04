class AddStandardToUsers < ActiveRecord::Migration
  def change
    add_column :users, :standard, :boolean, default: true
  end
end
