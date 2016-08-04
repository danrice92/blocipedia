class CreateWikiPolicies < ActiveRecord::Migration
  def change
    create_table :wiki_policies do |t|

      t.timestamps null: false
    end
  end
end
