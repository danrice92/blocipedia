class AddEmailToCollaborators < ActiveRecord::Migration
  def change
    add_column :collaborators, :email, :string
  end
end
